import 'package:flutter/material.dart';
import 'package:udcd_task2/items/payment_item.dart';

class PaymentTextField extends StatelessWidget {
  PaymentItem item;

  PaymentTextField({this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      child: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.green),
        child: TextFormField(
          style: TextStyle(
            fontSize: 18.0,
          ),
          keyboardType: item.type,
          initialValue: item.hint,
          decoration: InputDecoration(
            icon: (item.img)
                ? Image.asset(
                    'assets/verve_card.png',
                    width: 24.0,
                  )
                : item.icon,
            labelText: item.name,
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green)),
            filled: true,
            fillColor: Colors.grey[250],
            focusColor: Colors.green,
          ),
          cursorColor: Colors.green,
        ),
      ),
    );
  }
}
