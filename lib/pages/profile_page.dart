// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharma_says/pages/alarm.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const EditProfile()),
                            // );
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
                                              debugPrint('Chat');
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
                                          // showDialog(
                                          //   context: context,
                                          //   builder: (_) => AlertDialog(
                                          //     shape: RoundedRectangleBorder(
                                          //       borderRadius:
                                          //           BorderRadius.circular(30.0),
                                          //     ),
                                          //     // contentPadding:
                                          //     //     EdgeInsets.symmetric(
                                          //     //         vertical: 10.0,
                                          //     //         horizontal: 20.0),
                                          //     actions: [
                                          //       Padding(
                                          //         padding:
                                          //             const EdgeInsets.only(
                                          //                 right: 100.0),
                                          //         child: TextButton(
                                          //           onPressed: () {},
                                          //           child: Text(
                                          //             'Edit Username',
                                          //             style: TextStyle(
                                          //               fontWeight:
                                          //                   FontWeight.normal,
                                          //               color: Color.fromARGB(
                                          //                   255, 51, 126, 156),
                                          //             ),
                                          //           ),
                                          //         ),
                                          //       ),
                                          //       Divider(),
                                          //       Padding(
                                          //         padding:
                                          //             const EdgeInsets.only(
                                          //                 right: 100.0),
                                          //         child: TextButton(
                                          //           onPressed: () {},
                                          //           child: Text(
                                          //             'Change Password',
                                          //             style: TextStyle(
                                          //                 fontWeight:
                                          //                     FontWeight.normal,
                                          //                 color: Color.fromARGB(
                                          //                     255,
                                          //                     51,
                                          //                     126,
                                          //                     156)),
                                          //           ),
                                          //         ),
                                          //       ),
                                          //     ],
                                          //   ),
                                          // );
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
                                        onPressed: () {},
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
