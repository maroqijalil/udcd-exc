import 'dart:js';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:udcd_task1/items/signup_input.dart';
import 'package:udcd_task1/widgets/signup_text_field.dart';

class SignUpPage extends StatelessWidget {
  List<SignUpInput> items = [
    SignUpInput(hint: 'Nama Lengkap', icon: Icon(Icons.person)),
    SignUpInput(hint: 'Email', icon: Icon(Icons.email)),
    SignUpInput(hint: 'Kata Sandi', icon: Icon(Icons.lock)),
    SignUpInput(hint: 'Konfirmasi Kata Sandi', icon: Icon(Icons.lock)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Blogging',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 36.0,
              ),
              Column(
                children: items
                    .map((e) => SignUpTextField(
                          item: e,
                        ))
                    .toList(),
              ),
              SizedBox(
                height: 24.0,
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Daftar",
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
              SizedBox(height: 12.0,),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Sudah punya Akun?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                    TextSpan(
                      text: "Masuk",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {},
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12.0,
                      )
                    ),
                  ]
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
