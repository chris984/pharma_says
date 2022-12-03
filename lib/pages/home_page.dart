// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
// import 'package:flutter_palette/flutter_palette.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Center(
            child: Image.asset('assets/images/logo.png'),
          ),
        ),
      ),
    );
  }
}
