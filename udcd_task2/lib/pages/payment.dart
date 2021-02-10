import 'package:flutter/material.dart';
import 'package:udcd_task2/items/payment_item.dart';
import 'package:udcd_task2/widgets/payment_text_field.dart';

// Inside Form
class PaymentPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  List<PaymentItem> payItem = [
    PaymentItem(
        icon: Icon(Icons.person),
        name: "Nama",
        hint: "Musa Adebola",
        type: TextInputType.name),
    PaymentItem(
        icon: Icon(Icons.payment),
        img: true,
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
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Form(
            key: formKey,
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
                  padding: EdgeInsets.fromLTRB(32.0, 12.0, 32.0, 12.0),
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(124.0),
                  ),
                  onPressed: () {
                    if (formKey.currentState.validate()) {}
                  },
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
        ),
      ),
    );
  }
}

// Without Form
// class PaymentPage extends StatelessWidget {
//   final formKey = GlobalKey<FormState>();
//   List<PaymentItem> payItem = [
//     PaymentItem(
//         icon: Icon(Icons.person),
//         name: "Nama",
//         hint: "Musa Adebola",
//         type: TextInputType.name),
//     PaymentItem(
//         icon: Icon(Icons.payment),
//         name: "Nomor Kartu",
//         hint: "567 666 666 666",
//         type: TextInputType.number),
//     PaymentItem(
//         icon: Icon(Icons.credit_card),
//         name: "CVV",
//         hint: "687",
//         type: TextInputType.number),
//     PaymentItem(
//         icon: Icon(Icons.today),
//         name: "Tanggal Kadaluarsa",
//         hint: "10/20",
//         type: TextInputType.datetime),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text(
//             "Demo Kartu Pembayaran",
//             style: TextStyle(
//                 color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
//           ),
//         ),
//         backgroundColor: Colors.green,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(24.0),
//           child: Column(
//             children: <Widget>[
//               Column(
//                 children: payItem
//                     .map((it) => PaymentTextField(
//                           item: it,
//                         ))
//                     .toList(),
//               ),
//               SizedBox(
//                 height: 24.0,
//               ),
//               RaisedButton(
//                 padding: EdgeInsets.fromLTRB(32.0, 12.0, 32.0, 12.0),
//                 color: Colors.green,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(124.0),
//                 ),
//                 onPressed: () {},
//                 child: Text(
//                   "Bayar",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
