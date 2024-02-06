import 'package:flutter/material.dart';
import 'package:restroom_client/restroom_client.dart';
import 'package:restroom_dashboard/serverpod.dart';

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
      ),
      body: FutureBuilder(
        future: client.restroom.getRestRoom(1),
        builder:
            (BuildContext context, AsyncSnapshot<List<Restroom>> snapshot) {
          if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          if (snapshot.hasData) {
            final rooms = snapshot.data;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 2 / 0.8,
              ),
              itemCount: rooms!.length,
              itemBuilder: (BuildContext context, int index) {
                final ratings = rooms[index].rating;

                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(rooms[index].name),
                      (ratings!.isNotEmpty)
                          ? Column(
                              children: List.generate(5, (index) {
                              final count = ratings.where(
                                  (element) => (element.score == (index + 1)));
                              return Text('${index + 1} = ${count.length}');
                            }))
                          : Container()
                    ],
                  ),
                );
              },
            );
          }

          return Container();
        },
      ),
    );
  }
}
