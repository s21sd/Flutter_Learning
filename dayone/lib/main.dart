import 'package:dayone/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            headlineLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          )),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<StatefulWidget> createState() => myHomePage();
}

class myHomePage extends State<DashBoardScreen> {
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('StateFul')),
          backgroundColor: Colors.orange,
        ),
        body: ListWheelScrollView(
          itemExtent: 100,
          children: arrIndex
              .map((value) =>
                  Container(width: double.infinity, color: Colors.amber))
              .toList(),
        ));
  }
}
