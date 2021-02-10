import 'package:flutter/material.dart';

class PaymentItem {
  Icon icon;
  bool img;
  String name;
  String hint;
  TextInputType type;

  PaymentItem({this.icon, this.img = false, this.name, this.hint, this.type});
}
