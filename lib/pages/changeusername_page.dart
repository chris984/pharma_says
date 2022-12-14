// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Username extends StatefulWidget {
  const Username({super.key});

  @override
  State<Username> createState() => _UsernameState();
}

class _UsernameState extends State<Username> {
  bool testing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
          ),
          child: SingleChildScrollView(
            //Main Column
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Main Container
                Container(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    right: 5.0,
                    bottom: 150.0,
                    left: 5.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      80.0,
                    ),
                    border: Border.all(
                      color: Colors.grey.shade200,
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 1,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  //User Profile
                  child: Column(
                    children: [
                      ClipOval(
                        // borderRadius: BorderRadius.circular(
                        //   80,
                        // ),
                        child: Image.asset(
                          'assets/images/user1.jpg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        'Baldo Dela Cruz',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue.shade800,
                        ),
                      ),
                      Text(
                        'View/Edit Profile',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                            ),
                            //Change Password Field
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    decoration: InputDecoration(
                                      icon: Transform.translate(
                                        offset: Offset(
                                          5,
                                          0,
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(
                                            4,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.blue.shade800,
                                            borderRadius: BorderRadius.circular(
                                              6,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      hintText: 'New Username',
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(
                                    -40,
                                    0,
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'save',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          //Back To Profile Button
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              // foregroundColor: Colors.tealAccent[700],
                              backgroundColor: Colors.tealAccent[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                //border radius equal to or more than 50% of width
                              ),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => const EditProfile()),
                              // );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18.0,
                              ),
                              child: Text(
                                'Back To Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
