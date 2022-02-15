import 'package:flutter/material.dart';
import 'package:food_app/routes/routes.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DineIn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      onGenerateRoute: MyRoutes().onGenerateRoute,
      initialRoute: './',
    );
  }
}
