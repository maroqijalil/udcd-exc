import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  List satuan_panjang = ["km", "hm", "dam", "m", "dm", "cm", "mm"];
  String satuan_a = "m";
  String satuan_b = "m";
  Timer timer;
  bool init = true;

  TextEditingController input_panjang = TextEditingController();
  String result_panjang = " ";

  void convertPanjang() {
    double number = double.parse(input_panjang.text);
    int index1 = satuan_panjang.indexOf(satuan_a);
    int index2 = satuan_panjang.indexOf(satuan_b);
    int subt = index1 - index2;
    bool onTop = subt < 0;

    subt = subt.abs();
    subt = pow(10, subt);

    if (subt != 0) {
      if (onTop)
        number *= subt;
      else
        number /= subt;
    }

    setState(() {
      result_panjang = number.toString();
    });

    if (init) {
      setState(() {
        init = false;
      });
      this.checker();
    }

    number = 0.0;
  }

  void checker() {
    timer = Timer(Duration(milliseconds: 100), () {
      if (input_panjang.text.isEmpty) {
        setState(() {
          result_panjang = " ";
        });
      }
      this.checker();
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

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
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 28.0),
          child: Table(
            children: [
              TableTitle("Panjang", "Satuan"),
              TableRow(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 24.0),
                      child: TextField(
                        onChanged: (value) => convertPanjang(),
                        onEditingComplete: () => {
                          setState(() {
                            result_panjang = " ";
                          })
                        },
                        controller: input_panjang,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                          hintText: "Masukkan nilai panjang",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.amber,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            borderSide: BorderSide(
                              color: Colors.amberAccent,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                    child: DropdownButton(
                      value: satuan_a,
                      isExpanded: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      underline: Container(
                        color: Colors.transparent,
                      ),
                      items: satuan_panjang.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          satuan_a = value;
                          convertPanjang();
                        });
                      },
                    ),
                  ),
                ],
              ),
              TableTitle("Hasil", "Satuan"),
              TableRow(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber,
                        width: 1,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(8.0, 18.0, 8.0, 18.0),
                    child: Text(
                      result_panjang,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                    child: DropdownButton(
                      value: satuan_b,
                      isExpanded: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      underline: Container(
                        color: Colors.transparent,
                      ),
                      items: satuan_panjang.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          satuan_b = value;
                        });
                        convertPanjang();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow TableTitle(String title1, String title2) {
    return TableRow(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 8.0),
          child: Text(
            title1,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 12.0,
            ),
          ),
        ),
        Text(
          title2,
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
