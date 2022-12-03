import 'package:flutter/material.dart';
import 'package:pharma_says/pages/chat.dart';
import 'package:pharma_says/pages/home_page.dart';
import 'package:pharma_says/pages/login_page.dart';
import 'package:pharma_says/pages/lookup_page.dart';
import 'package:pharma_says/pages/signup_page.dart';
import 'package:pharma_says/pages/terms_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pharma Says',
      theme: ThemeData(
        fontFamily: 'sans-serif',
        brightness: Brightness.light,
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.resolveWith(
            (states) => Colors.tealAccent[700],
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
