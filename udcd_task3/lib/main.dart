import 'package:flutter/material.dart';
import 'package:udcd_task3/ui/pages/calculator.dart';
import 'package:udcd_task3/ui/pages/converter.dart';
import 'package:udcd_task3/ui/pages/home.dart';
import 'package:udcd_task3/ui/pages/login.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          '/login': (context) => LoginPage(),
          '/calc': (context) => CalculatorPage(),
          '/converter': (context) => ConverterPage(),
          '/': (context) => HomePage(),
        },
      ),
    );
