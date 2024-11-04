import 'package:flutter/material.dart';
import 'package:flutterwidgetsnov4/checkedbox.dart';
import 'package:flutterwidgetsnov4/multiplecheckedbox.dart';
import 'package:flutterwidgetsnov4/popup.dart';
import 'package:flutterwidgetsnov4/radiobutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets',
      theme: ThemeData(
       
      ),
      home: PopupMenu(),
    );
  }
}

