import 'package:flutter/cupertino.dart';

class SurveyModel{
  final int Employee_ID;
  final int First_Question ;
  final int Second_Question;
  final int Third_Question;
  final int Fourth_Question;
  final int Fifth_Question;
  final int Sixth_Question;
  final int Seventh_Question;
  final int Eighth_Question;
  final int Ninth_Question;
  final int Tenth_Question;
  final int Eleventh_Question;
  final int Twelfth_Question;
  final int Thirteenth_Question;
  final int Fourteenth_Question;
  final int Fifteenth_Question;
  final int Sixteenth_Question ;


  const SurveyModel({
    @required this.Employee_ID,
    @required this.First_Question,
    @required this.Second_Question,
    @required this.Third_Question,
    @required this.Fourth_Question,
    @required this.Fifth_Question,
    @required this.Sixth_Question,
    @required this.Seventh_Question,
    @required this.Eighth_Question,
    @required this.Ninth_Question,
    @required this.Tenth_Question,
    @required this.Eleventh_Question,
    @required this.Twelfth_Question,
    @required this.Thirteenth_Question,
    @required this.Fourteenth_Question,
    @required this.Fifteenth_Question,
    @required this.Sixteenth_Question
  });


  factory SurveyModel.fromJson(Map<String, dynamic> json){
    return SurveyModel(
        Employee_ID: json['Employee_ID'],
        First_Question: json['First_Question'],
        Second_Question: json['Second_Question'],
        Third_Question: json['Third_Question'],
        Fourth_Question: json['Fourth_Question'],
        Fifth_Question: json['Fifth_Question'],
        Sixth_Question: json['Sixth_Question'],
        Seventh_Question: json['Seventh_Question'],
        Eighth_Question: json['Eighth_Question'],
        Ninth_Question: json['Ninth_Question'],
        Tenth_Question: json['Tenth_Question'],
        Eleventh_Question: json['Eleventh_Question'],
        Twelfth_Question: json['Twelfth_Question'],
        Thirteenth_Question: json['Thirteenth_Question'],
        Fourteenth_Question: json['Fourteenth_Question'],
        Fifteenth_Question: json['Fifteenth_Question'],
        Sixteenth_Question: json['Sixteenth_Question']
    );
  }
}