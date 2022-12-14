import 'package:flutter/material.dart';
import 'package:pharma_says/pages/message.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddMessage extends StatelessWidget {
  const AddMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Chats',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.5,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[400],
        child: Icon(
          FontAwesomeIcons.penToSquare,
          size: 30,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => Message()),
          );
        },
      ),
    );
  }
}
