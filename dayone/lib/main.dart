import 'package:dayone/IntroPage.dart';
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
      home: Intropage(),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<StatefulWidget> createState() => myHomePage();
}

class myHomePage extends State<DashBoardScreen> {
  var result = "";
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('StateFul')),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: no1Controller,
              ),
              TextField(
                controller: no2Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var sum = no1 + no2;
                          result = "The sum of $no1 and $no2 is $sum";
                          setState(() {});
                        },
                        child: Text('Add')),
                    ElevatedButton(onPressed: () {}, child: Text('Sub')),
                    ElevatedButton(onPressed: () {}, child: Text('Mul')),
                    ElevatedButton(onPressed: () {}, child: Text('Div'))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(21),
                child: Text(
                  result,
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
