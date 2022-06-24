import 'package:flutter/material.dart';
import 'package:aplikasi_flutter_pemula/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home' : (context) => MyHome(),
    },
  ));
}
