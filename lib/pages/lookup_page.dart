// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class LookupPage extends StatefulWidget {
  const LookupPage({super.key});

  @override
  State<LookupPage> createState() => _LookupPageState();
}

class _LookupPageState extends State<LookupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                    height: 100,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: Container(
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(18),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.teal.shade600,
                      Colors.blue.shade700,
                    ],
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Transform.translate(
                        offset: Offset(
                          0,
                          -50,
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            // foregroundColor: Colors.white,
                            backgroundColor: Colors.grey[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              //border radius equal to or more than 50% of width
                            ),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 50.0,
                              vertical: 25,
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.search_outlined,
                                  color: Colors.blue[800],
                                  size: 50,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Medicine Look up',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // foregroundColor: Colors.white,
                          backgroundColor: Colors.tealAccent[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            //border radius equal to or more than 50% of width
                          ),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text.rich(
                        TextSpan(
                          text: 'Don\'t have an account?',
                          children: <InlineSpan>[
                            TextSpan(
                              text: ' Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class CustomClipPath extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();

//     path.moveTo(size.width, size.height);
//     path.lineTo(size.width, 0);
//     path.quadraticBezierTo(size.width * 0.9738556, size.height * -0.0677800,
//         size.width * 0.8220222, size.height * 0.0894000);
//     path.cubicTo(
//         size.width * 0.4953667,
//         size.height * 0.1016200,
//         size.width * 0.4934333,
//         size.height * 0.1003800,
//         size.width * 0.2891778,
//         size.height * 0.0910600);
//     path.quadraticBezierTo(size.width * 0.2454556, size.height * 0.0243200, 0,
//         size.height * 0.0020000);
//     path.lineTo(0, size.height);
//     path.lineTo(size.width, size.height);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
