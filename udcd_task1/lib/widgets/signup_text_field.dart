import 'dart:js';

import 'package:flutter/material.dart';
import 'package:udcd_task1/items/signup_input.dart';

class SignUpTextField extends StatelessWidget {
  SignUpInput item;

  SignUpTextField({this.item});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: item.hint,
        prefixIcon: item.icon,
        filled: true,
        fillColor: Colors.white24,
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
    );
  }
}
