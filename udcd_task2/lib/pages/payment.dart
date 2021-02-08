import 'package:flutter/material.dart';
import 'package:udcd_task2/items/payment_item.dart';
import 'package:udcd_task2/widgets/payment_text_field.dart';

class PaymentPage extends StatelessWidget {
  List<PaymentItem> payItem = [
    PaymentItem(
        icon: Icon(
          Icons.person,
        ),
        name: "Nama",
        hint: "Musa Adebola",
        type: TextInputType.name),
    PaymentItem(
        icon: Icon(Icons.payment),
        name: "Nomor Kartu",
        hint: "567 666 666 666",
        type: TextInputType.number),
    PaymentItem(
        icon: Icon(Icons.credit_card),
        name: "CVV",
        hint: "687",
        type: TextInputType.number),
    PaymentItem(
        icon: Icon(Icons.today),
        name: "Tanggal Kadaluarsa",
        hint: "10/20",
        type: TextInputType.datetime),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Demo Kartu Pembayaran",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            Column(
              children: payItem
                  .map((it) => PaymentTextField(
                        item: it,
                      ))
                  .toList(),
            ),
            SizedBox(
              height: 24.0,
            ),
            RaisedButton(
              padding: EdgeInsets.all(16.0),
              color: Colors.red,
              onPressed: () {},
              child: Text(
                "Bayar",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
