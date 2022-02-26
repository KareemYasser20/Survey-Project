import 'package:flutter/material.dart';
import 'package:survey_project/screens/charts.dart';
import 'package:survey_project/screens/first_question.dart';
import 'package:survey_project/screens/login_screen.dart';

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
         FirstQuestion.id: (context) => FirstQuestion(),
         Charts.id: (context) => Charts(),

      },

    );
  }
}

