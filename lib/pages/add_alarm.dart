import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddAlarm extends StatefulWidget {
  const AddAlarm({super.key});

  @override
  State<AddAlarm> createState() => _AddAlarmState();
}

class _AddAlarmState extends State<AddAlarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          'Add Medicine',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.5,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Edit Button
            OutlinedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ))),
              onPressed: () {
                //Edit Button
              },
              child: Row(
                children: [
                  Text(
                    'Save',
                    style: TextStyle(fontSize: 30.0, color: Colors.teal[400]),
                  ),
                ],
              ),
            ),
            //Adding Button
            FloatingActionButton(
              backgroundColor: Colors.teal[400],
              onPressed: () {
                //Adding Button
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
