import 'package:flutter/material.dart';

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
          textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          )),
      home: const DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Card(
            elevation: 12,
            shadowColor: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(11),
              child: Text(
                'Sunny',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
        ));
  }
}
