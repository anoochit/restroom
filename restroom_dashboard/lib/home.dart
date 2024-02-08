import 'package:flutter/material.dart';
import 'package:restroom_client/restroom_client.dart';
import 'package:restroom_dashboard/serverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restroom Rating'),
        centerTitle: true,
      ),
      body: RoomRateChart(
        future: client.restroom.getRestRoom(1),
      ),
    );
  }
}

class RoomRateChart extends StatelessWidget {
  const RoomRateChart({
    super.key,
    required this.future,
  });

  final Future<List<Restroom>> future;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<List<Restroom>> snapshot) {
        // has error
        if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // has data
        if (snapshot.hasData) {
          final room = snapshot.data;
          if (room!.isNotEmpty) {
            final ratings = room.first.rating;
            final barSeries = getBarSeries(ratings: ratings);
            return Builder(
              builder: (context) {
                return SfCartesianChart(
                  title: ChartTitle(text: room.first.name),
                  primaryYAxis: const NumericAxis(),
                  primaryXAxis: const CategoryAxis(),
                  series: barSeries,
                );
              },
            );
          } else {
            return const Center(child: Text('No data'));
          }
        }

        // loading
        return Container();
      },
    );
  }

  List<BarSeries<ChartData, String>> getBarSeries({List<Rating>? ratings}) {
    final chartData = <ChartData>[];
    final chartTitle = ['Very poor', 'Poor', 'Everage', 'Good', 'Exellent'];

    for (int index = 0; index < 5; index++) {
      final score = ratings?.where((element) => (element.score == (index + 1)));
      chartData.add(ChartData(x: chartTitle[index], y: score!.length));
    }

    return <BarSeries<ChartData, String>>[
      BarSeries<ChartData, String>(
        dataSource: chartData,
        trackColor: const Color.fromRGBO(198, 201, 207, 1),
        xValueMapper: (ChartData sales, _) => sales.x,
        yValueMapper: (ChartData sales, _) => sales.y,
      ),
    ];
  }
}

class ChartData {
  final String x;
  final int y;

  ChartData({required this.x, required this.y});
}
