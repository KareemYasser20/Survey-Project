import 'package:flutter/material.dart';
import 'package:survey_project/screens/charts.dart';
import 'package:survey_project/screens/questions_screen.dart';
import 'package:survey_project/screens/login_screen.dart';
import 'package:survey_project/screens/thanks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: LoginScreen.id,
      routes: {
         LoginScreen.id : (context) => LoginScreen(),
         Questions.id: (context) => Questions(),
         Charts.id: (context) => Charts(),
        ThanksScreen.id: (context)=>ThanksScreen(),

      },

    );
  }
}

