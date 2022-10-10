import 'package:flutter/material.dart';
import 'package:flutter_application_1/fruit_app/view/fruit_app_home.dart';
import 'package:flutter_application_1/fruit_app/view/fruit_app_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.green, 
      ),
      debugShowCheckedModeBanner: false,
      home:  FruitAppHome(),
    );
  }
}
