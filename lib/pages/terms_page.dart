// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

enum PrivacyStates { agree, ignore }

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({
    super.key,
  });

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  PrivacyStates? _privacy = PrivacyStates.agree;
  PrivacyStates? _privacy1 = PrivacyStates.ignore;
  bool isVisible = true;
  bool isButtonActive = true;
  final notClickAble = null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/logo1.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Your Health. Your Data',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Text(
                  'Your health data will never be shared with any company but pharmasays, and you can delete it at any time.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: RadioListTile(
                  title: Text.rich(
                    TextSpan(
                      text:
                          'I agree to processng of my personal health data for providing me pharmasays app functions. See more in ',
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: Colors.tealAccent[700]),
                        ),
                      ],
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  value: PrivacyStates.agree,
                  groupValue: _privacy1,
                  toggleable: true,
                  onChanged: (PrivacyStates? value) {
                    setState(() {
                      _privacy1 = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: RadioListTile(
                  title: Text.rich(
                    TextSpan(
                      text: 'I agree to the ',
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: Colors.tealAccent[700]),
                        ),
                        TextSpan(
                          text: ' and ',
                        ),
                        TextSpan(
                          text: 'Terms of Use',
                          style: TextStyle(color: Colors.tealAccent[700]),
                        ),
                      ],
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  value: PrivacyStates.ignore,
                  groupValue: _privacy,
                  toggleable: true,
                  onChanged: (PrivacyStates? value) {
                    setState(() {
                      _privacy = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                visible: _privacy1 == PrivacyStates.agree &&
                        _privacy == PrivacyStates.ignore
                    ? !isVisible
                    : isVisible,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      Colors.tealAccent[700],
                    ),
                  ),
                  onPressed: (() {
                    setState(() {
                      _privacy1 = PrivacyStates.agree;
                      _privacy = PrivacyStates.ignore;
                      !isVisible;
                    });
                  }),
                  child: Text(
                    'Accept All',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.tealAccent[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    //border radius equal to or more than 50% of width
                  ),
                ),
                onPressed: _privacy1 == PrivacyStates.agree &&
                        _privacy == PrivacyStates.ignore
                    ? () {}
                    : null,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
