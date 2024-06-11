import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Hero(
          tag: 'background',
          child: Image.asset(
            'assets/images/logo.jpg',
            width: 150,
            height: 100,
          ),
        ),
      ),
    );
  }
}
