import 'package:flutter/material.dart';
import 'package:udcd_task2/items/payment_item.dart';

class PaymentTextField extends StatefulWidget {
  PaymentItem item;

  PaymentTextField({this.item});

  @override
  _PaymentTextFieldState createState() => _PaymentTextFieldState();
}

class _PaymentTextFieldState extends State<PaymentTextField> {
  FocusNode myFNode;

  @override
  void initState() {
    super.initState();
    myFNode = FocusNode();
  }

  @override
  void dispose() {
    myFNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      child: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.red),
        child: TextFormField(
          keyboardType: widget.item.type,
          enabled: true,
          focusNode: myFNode,
          initialValue: widget.item.hint,
          decoration: InputDecoration(
            icon: widget.item.icon,
            labelText: widget.item.name,
            labelStyle: TextStyle(
              color: myFNode.hasFocus ? Colors.red : Colors.grey,
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
            filled: true,
            fillColor: Colors.grey[250],
            focusColor: Colors.red,
          ),
          cursorColor: Colors.red,
          onFieldSubmitted: (term) {
            myFNode.unfocus();
            FocusScope.of(context).requestFocus(myFNode);
          },
        ),
      ),
    );
  }
}
