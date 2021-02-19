import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Konversi Panjang",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(children: [
          Form(
            child: Column(
              children: [
                TextFormField(),
                SizedBox(height: 12.0),
                TextFormField(),
                SizedBox(height: 12.0),
                MaterialButton(),
              ],
            ),
          ),
          Text("Hasil"),
        ]),
      ),
    );
  }
}
