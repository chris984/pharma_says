import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.1,
        leading: const Icon(
          Icons.arrow_circle_left,
          size: 35.0,
          color: Colors.green,
        ),
        title: const Text(
          'New Message',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                style: TextStyle(fontSize: 17.0),
                decoration: InputDecoration(
                  // fillColor: Colors.red,
                  filled: true,
                  hintText: "Pharmacist",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(width: 1, color: Colors.cyan)),
                  suffixIcon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.cyan[200],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
