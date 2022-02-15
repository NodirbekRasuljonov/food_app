import 'package:flutter/material.dart';
import 'package:food_app/screens/home_page.dart';

class MyRoutes {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case './':
      return MaterialPageRoute(builder: (context)=>const MyHomePage());
        
    }
  }
}
