import 'package:flutter/material.dart';

class SignUpInput {
  Icon icon;
  String hint;
  TextInputType type;
  bool hide;

  SignUpInput({this.icon, this.hint, this.type, this.hide = false});
}
