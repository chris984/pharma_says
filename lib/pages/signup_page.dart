import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'profile_page.dart';

enum ShowPassword { ok, no }

//Register chuchu

Future<Register> Signup(String email, String password) async {
  final response = await http.post(
    Uri.parse('http://192.168.1.4:8000/api/user/register'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(
      <String, String>{'email': email, 'password': password},
    ),
  );

  if (response.statusCode == 200) {
    return Register.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create album.');
  }
}

class Register {
  final String email;
  final String password;

  const Register({required this.email, required this.password});

  factory Register.fromJson(Map<String, dynamic> json) {
    return Register(
      email: json['email'],
      password: json['password'],
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  ShowPassword? _showPassword = ShowPassword.ok;
  ShowPassword? _showPassword1 = ShowPassword.no;

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  Future<Register>? _futureRegister;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 100,
                    width: 200,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.tealAccent[700],
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: TextField(
                          controller: _email,
                          style: TextStyle(
                            fontSize: 13,
                          ),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: TextField(
                          controller: _password,
                          style: TextStyle(
                            fontSize: 13,
                          ),
                          obscureText:
                              _showPassword1 == ShowPassword.ok ? false : true,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: _showPassword1 == ShowPassword.ok
                                  ? Colors.grey
                                  : Colors.black,
                            ),
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: 13,
                          ),
                          obscureText:
                              _showPassword1 == ShowPassword.ok ? false : true,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: _showPassword1 == ShowPassword.ok
                                  ? Colors.grey
                                  : Colors.black,
                            ),
                            border: InputBorder.none,
                            hintText: 'Re-type Password',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                    ),
                    child: RadioListTile(
                      title: Text(
                        'Show Password',
                        style: TextStyle(
                          fontSize: 10,
                          color: _showPassword1 == ShowPassword.ok
                              ? Colors.tealAccent[700]
                              : Colors.black,
                        ),
                      ),
                      toggleable: true,
                      value: ShowPassword.ok,
                      groupValue: _showPassword1,
                      onChanged: (ShowPassword? value) {
                        setState(() {
                          _showPassword1 = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 100.0,
                      ),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (BuildContext context) => UserProfile()),
                      // );

                      setState(() {
                        _futureRegister = Signup(_email.text, _password.text);
                        _email.clear();
                        _password.clear();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
