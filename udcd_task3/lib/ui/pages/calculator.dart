import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Luas dan Keliling",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
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
