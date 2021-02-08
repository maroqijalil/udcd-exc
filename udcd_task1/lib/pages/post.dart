import 'dart:js';

import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buat Postingan",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Apa itu Flutter?",
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.0,),
            Expanded(
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Apa itu Flutter?",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.0,),
            FlatButton(
              onPressed: () {},
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Posting",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
