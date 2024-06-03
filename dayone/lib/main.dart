import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 95, 14, 233)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Hii',
              style: TextStyle(fontSize: 25),
            ),
            const Text(
              'Hii',
              style: TextStyle(fontSize: 25),
            ),
            const Text(
              'Hii',
              style: TextStyle(fontSize: 25),
            ),
            const Text(
              'Hii',
              style: TextStyle(fontSize: 25),
            ),
            const Text(
              'Hii',
              style: TextStyle(fontSize: 25),
            ),
            Center(child: InkWell(
              onTap: () {
                print('Tapped');
              },
            ))
          ],
        ));
  }
}
