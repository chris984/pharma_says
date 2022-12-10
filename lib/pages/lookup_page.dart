// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pharma_says/pages/login_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pharma_says/pages/speech_to_text.dart';

class LookupPage extends StatelessWidget {
  const LookupPage({super.key});

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
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => new AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0))),
                                content: Builder(
                                  builder: (context) {
                                    // Get available height and width of the build area of this widget. Make a choice depending on the size.
                                    var height =
                                        MediaQuery.of(context).size.height;
                                    var width =
                                        MediaQuery.of(context).size.width;

                                    return Container(
                                      padding: EdgeInsets.all(10),
                                      height: height - 250,
                                      width: width - 200,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          //Icons and Medicine LookUp text
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                children: [
                                                  Icon(
                                                    Icons.search,
                                                    size: 50,
                                                    color: Color.fromARGB(
                                                        255, 51, 126, 156),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'Medicine LookUp',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 51, 126, 156)),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 30),
                                          Row(
                                            children: [
                                              Icon(Icons.search),
                                              SizedBox(width: 5),
                                              Expanded(
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    hintText: 'Search',
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 40),
                                          Row(
                                            children: [
                                              Icon(Icons.scanner),
                                              SizedBox(width: 5),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Image Text Scan',
                                                  style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Color.fromARGB(
                                                        255, 51, 126, 156),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Divider(
                                              indent: 30,
                                              height: 1,
                                              thickness: 1),
                                          SizedBox(height: 20),
                                          Row(
                                            children: [
                                              Icon(FontAwesomeIcons.microphone),
                                              SizedBox(width: 5),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (BuildContext
                                                                  context) =>
                                                              SpeechToText()));
                                                },
                                                child: Text(
                                                  'Speech To Text',
                                                  style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Color.fromARGB(
                                                        255, 51, 126, 156),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Divider(
                                              indent: 30,
                                              height: 1,
                                              thickness: 1),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          },
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LoginPage()));
                        },
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
                                color: Color(0XFFFFFFFF),
                              ),
                            ),
                          ],
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0XFFFFFFFF),
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
