import 'package:flutter/cupertino.dart';

class LoginItem {
  String hint;
  String label;
  TextEditingController controller;
  TextInputType type;
  Icon icon;
  Function validator;

  LoginItem({
    this.controller,
    this.hint,
    this.label,
    this.type,
    this.icon,
    this.validator,
  });
}
