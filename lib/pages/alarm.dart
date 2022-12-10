import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pharma_says/pages/add_alarm.dart';

class Alarm extends StatefulWidget {
  const Alarm({super.key});

  @override
  State<Alarm> createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_left_outlined),
          iconSize: 35.0,
          color: Colors.grey.shade400,
        ),
        title: Text(
          'Medicine',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text('Sample Text'),
      )),
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
                  Icon(
                    FontAwesomeIcons.solidPenToSquare,
                    color: Colors.teal[400],
                  ),
                  Text(
                    'Edit',
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AddAlarm()));
              },
              child: Icon(
                Icons.add,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
