import 'package:flutter/material.dart';
import 'package:fuksiarz/injectable/injectable.dart';
import 'package:fuksiarz/src/app/app.dart';

void main() {
  configureDependencies();
  runApp(const App());
}
