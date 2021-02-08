import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buat Postingan",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
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
                    color: Colors.blue,
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: TextField(
                maxLines: 18,
                decoration: InputDecoration(
                  hintText: "Silahkan isi sesuai yang kamu inginkan",
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
                      color: Colors.blue,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            FlatButton(
              onPressed: () {},
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64.0),
                  child: Text(
                    "Posting",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0)),
            ),
          ],
        ),
      ),
    );
  }
}
