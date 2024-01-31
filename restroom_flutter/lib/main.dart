import 'package:flutter/material.dart';
import 'package:restroom_flutter/config.dart';
import 'package:restroom_flutter/pages/home.dart';
import 'package:restroom_flutter/serverpod.dart';
import 'package:restroom_flutter/services/restroom_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  initializeServerpodClient();
  restroom = (await RestroomService.registerRoom())!;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restroom',
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 48.0,
          ),
          headlineMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
