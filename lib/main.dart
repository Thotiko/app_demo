
import 'package:demo_mayao/login.dart';
import 'package:demo_mayao/regsiter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>MyLogin(),
      'register': (context)=>MyRegister(),
    },
  ));
}

