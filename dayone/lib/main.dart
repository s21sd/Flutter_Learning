import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                          const BorderSide(color: Colors.deepOrange, width: 2),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            const BorderSide(color: Colors.deepOrange))),
              ),
              Container(
                height: 11,
              ),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                          const BorderSide(color: Colors.deepOrange, width: 2),
                    ),
                    suffixText: "Username exists",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            const BorderSide(color: Colors.deepOrange))),
              ),
            ],
          ),
        )));
  }
}
