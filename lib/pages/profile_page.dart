// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pharma_says/pages/add_message.dart';
import 'package:pharma_says/pages/alarm.dart';
import 'package:pharma_says/pages/help.dart';
import 'package:pharma_says/pages/speech_to_text.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          //Gradient Background
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.teal.shade600,
                  Colors.blue.shade700,
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                //User Profile
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/images/user1.jpg',
                        width: 60,
                        height: 60,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Transform.translate(
                          offset: Offset(
                            0,
                            5,
                          ),
                          child: Text(
                            'Baldo Dela Cruz',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
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
                                                  Container(
                                                    width: 100,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/user1.jpg"),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                    ),
                                                  ),

                                                  // Icon(
                                                  //   Icons.search,
                                                  //   size: 50,
                                                  //   color: Color.fromARGB(
                                                  //       255, 51, 126, 156),
                                                  // ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'Juan Dela Cruz',
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
                                          SizedBox(height: 40),
                                          Row(
                                            children: [
                                              Icon(Icons.person),
                                              SizedBox(width: 5),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Edit Username',
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
                                              Icon(FontAwesomeIcons.lock),
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
                                                  'Change Password',
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
                          child: Text(
                            'View/Edit Profile >',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 180,
                ),
                //Second Content Container
                Flexible(
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.vertical(
                      //   top: Radius.circular(18),
                      // ),
                    ),
                    child: Center(
                      //Features Container
                      child: Wrap(
                        children: [
                          Transform.translate(
                            offset: Offset(
                              0,
                              -145,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          //Medicine Button
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              // foregroundColor: Colors.white,
                                              backgroundColor: Colors.grey[100],
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                //border radius equal to or more than 50% of width
                                              ),
                                            ),
                                            onPressed: () {
                                              debugPrint('Click');
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 30.0,
                                                vertical: 30.0,
                                              ),
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .medical_services_outlined,
                                                    color: Colors
                                                        .lightBlue.shade800,
                                                    size: 50,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'Medicine',
                                                    style: TextStyle(
                                                      color: Colors
                                                          .lightBlue.shade800,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          //Chat Button
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              // foregroundColor: Colors.white,
                                              backgroundColor: Colors.grey[100],
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                //border radius equal to or more than 50% of width
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          AddMessage()));
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 30.0,
                                                vertical: 30.0,
                                              ),
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.chat_outlined,
                                                    color: Colors
                                                        .lightBlue.shade800,
                                                    size: 50,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'Chat',
                                                    style: TextStyle(
                                                      color: Colors
                                                          .lightBlue.shade800,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      //Medicine Look Up Button
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          // foregroundColor: Colors.white,
                                          backgroundColor: Colors.grey[100],
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            //border radius equal to or more than 50% of width
                                          ),
                                        ),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (_) => new AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              30.0))),
                                              content: Builder(
                                                builder: (context) {
                                                  // Get available height and width of the build area of this widget. Make a choice depending on the size.
                                                  var height =
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height;
                                                  var width =
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width;

                                                  return Container(
                                                    padding: EdgeInsets.all(10),
                                                    height: height - 250,
                                                    width: width - 200,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        //Icons and Medicine LookUp text
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Column(
                                                              children: [
                                                                Icon(
                                                                  Icons.search,
                                                                  size: 50,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          51,
                                                                          126,
                                                                          156),
                                                                ),
                                                                SizedBox(
                                                                    height: 10),
                                                                Text(
                                                                  'Medicine LookUp',
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          51,
                                                                          126,
                                                                          156)),
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
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Search',
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
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          51,
                                                                          126,
                                                                          156),
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
                                                            Icon(FontAwesomeIcons
                                                                .microphone),
                                                            SizedBox(width: 5),
                                                            TextButton(
                                                              onPressed: () {
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (BuildContext context) =>
                                                                                SpeechToText()));
                                                              },
                                                              child: Text(
                                                                'Speech To Text',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          51,
                                                                          126,
                                                                          156),
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
                                            vertical: 100,
                                          ),
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.search_outlined,
                                                color:
                                                    Colors.lightBlue.shade800,
                                                size: 60,
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Medicine Look Up',
                                                style: TextStyle(
                                                  color:
                                                      Colors.lightBlue.shade800,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    children: [
                                      //Help Button
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          // foregroundColor: Colors.white,
                                          backgroundColor: Colors.grey[100],
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            //border radius equal to or more than 50% of width
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          Helppage()));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 100.0,
                                          ),
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.help_outline,
                                                color:
                                                    Colors.lightBlue.shade800,
                                                size: 40,
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Help',
                                                style: TextStyle(
                                                  color:
                                                      Colors.lightBlue.shade800,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
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
        ),
      ),
    );
  }
}
