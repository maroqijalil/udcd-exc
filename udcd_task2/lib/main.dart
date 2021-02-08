import 'package:flutter/material.dart';
import 'package:udcd_task2/pages/payment.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => PaymentPage(),
      },
    ));
