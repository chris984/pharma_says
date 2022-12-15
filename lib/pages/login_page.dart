// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pharma_says/pages/splash_screen.dart';

import 'signup_page.dart';

enum ShowPassword { ok, no }

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  ShowPassword? _showPassword = ShowPassword.ok;
  ShowPassword? _showPassword1 = ShowPassword.no;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 100,
                    width: 200,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Account Login',
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
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
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
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          style: TextStyle(
                            fontSize: 13,
                          ),
                          obscureText:
                              _showPassword1 == ShowPassword.ok ? false : true,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processed Data')),
                            );
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SplashScreen(),
                                ));
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // foregroundColor: Colors.tealAccent[700],
                          backgroundColor: Colors.white,
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
                                    SplashScreen(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18.0,
                          ),
                          child: Text(
                            'Login Later',
                            style: TextStyle(
                              color: Colors.tealAccent[700],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'or connect with',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // foregroundColor: Colors.tealAccent[700],
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            //border radius equal to or more than 50% of width
                          ),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                          ),
                          child: Text(
                            '',
                            style: TextStyle(
                              color: Colors.tealAccent[700],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // foregroundColor: Colors.tealAccent[700],
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            //border radius equal to or more than 50% of width
                          ),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                          ),
                          child: Text(
                            '',
                            style: TextStyle(
                              color: Colors.tealAccent[700],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      TextButton(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              color: Colors.tealAccent[700],
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => SignUp()));
                        },
                      ),
                    ],
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
