import 'package:flutter/cupertino.dart';

class SurveyModel{

  // contain data model for retrieve data from database using api

  final int employeeID;
  final int firstQuestion ;
  final int secondQuestion;
  final int thirdQuestion;
  final int fourthQuestion;
  final int fifthQuestion;
  final int sixthQuestion;
  final int seventhQuestion;
  final int eighthQuestion;
  final int ninthQuestion;
  final int tenthQuestion;
  final int eleventhQuestion;
  final int twelfthQuestion;
  final int thirteenthQuestion;
  final int fourteenthQuestion;
  final int fifteenthQuestion;
  final int sixteenthQuestion ;


  const SurveyModel({
    @required this.employeeID,
    @required this.firstQuestion,
    @required this.secondQuestion,
    @required this.thirdQuestion,
    @required this.fourthQuestion,
    @required this.fifthQuestion,
    @required this.sixthQuestion,
    @required this.seventhQuestion,
    @required this.eighthQuestion,
    @required this.ninthQuestion,
    @required this.tenthQuestion,
    @required this.eleventhQuestion,
    @required this.twelfthQuestion,
    @required this.thirteenthQuestion,
    @required this.fourteenthQuestion,
    @required this.fifteenthQuestion,
    @required this.sixteenthQuestion
  });


  factory SurveyModel.fromJson(Map<String, dynamic> json){
    return SurveyModel(
        employeeID: json['Employee_ID'],
        firstQuestion: json['First_Question'],
        secondQuestion: json['Second_Question'],
        thirdQuestion: json['Third_Question'],
        fourthQuestion: json['Fourth_Question'],
        fifthQuestion: json['Fifth_Question'],
        sixthQuestion: json['Sixth_Question'],
        seventhQuestion: json['Seventh_Question'],
        eighthQuestion: json['Eighth_Question'],
        ninthQuestion: json['Ninth_Question'],
        tenthQuestion: json['Tenth_Question'],
        eleventhQuestion: json['Eleventh_Question'],
        twelfthQuestion: json['Twelfth_Question'],
        thirteenthQuestion: json['Thirteenth_Question'],
        fourteenthQuestion: json['Fourteenth_Question'],
        fifteenthQuestion: json['Fifteenth_Question'],
        sixteenthQuestion: json['Sixteenth_Question']
    );
  }
}