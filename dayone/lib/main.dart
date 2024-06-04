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
      theme: ThemeData(primarySwatch: Colors.blue),
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
      ),
      body: Container(
        color: Colors.amber,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade400,
              border: Border.all(width: 2, color: Colors.black),
              boxShadow: const [
                BoxShadow(blurRadius: 51, spreadRadius: 7, color: Colors.white)
              ],
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
