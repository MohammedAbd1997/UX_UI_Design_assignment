import 'package:flutter/material.dart';
import 'package:ui_ux_project/main.dart';
import 'package:ui_ux_project/ui/Screenswidget/firstscreen.dart';
import 'package:ui_ux_project/ui/Screenswidget/secondscreent.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    
    switch(settings.name){
      case'/':
        return MaterialPageRoute(builder: (builder)=> FirstScreen());
      case '/second':
        return MaterialPageRoute(builder: (builder)=> Secondpage());
      
    }
  }
}
