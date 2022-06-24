import 'package:flutter/material.dart';
import 'package:aplikasi_flutter_pemula/home.dart';
import 'package:aplikasi_flutter_pemula/about.dart';
import 'package:aplikasi_flutter_pemula/projects.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home' : (context) => MyHome(),
      'about' : (context) => MyAbout(),
      'projects' : (context) => MyProjects()
    },
  ));
}
