import 'dart:convert';
import 'package:http/http.dart' as http;

class InsertData {


  static insertSurveyData (List<int> data) async{
    var url = Uri.parse('http://192.168.182.42:8090/api/survey');

    try{
      var res = await http.post(url
        ,headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, int>{
          "Employee_ID":data[0],
          "First_Question":data[1],
          "Second_Question":data[2],
          "Third_Question":data[3],
          "Fourth_Question":data[4],
          "Fifth_Question":data[5],
          "Sixth_Question":data[6],
          "Seventh_Question":data[7],
          "Eighth_Question":data[8],
          "Ninth_Question":data[9],
          "Tenth_Question":data[10],
          "Eleventh_Question":data[11],
          "Twelfth_Question":data[12],
          "Thirteenth_Question":data[13],
          "Fourteenth_Question":data[14],
          "Fifteenth_Question":data[15],
          "Sixteenth_Question":data[16]
        }),
      );
      print('res ${res.statusCode}');
      return res;
    }catch(e){
      print('error : $e');
    }
  }
}