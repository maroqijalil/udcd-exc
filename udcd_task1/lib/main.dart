import 'package:flutter/material.dart';
import 'package:udcd_task1/pages/signup.dart';
import 'package:udcd_task1/pages/home.dart';
import 'package:udcd_task1/pages/post.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/post': (context) => PostPage(),
      },
    ));
