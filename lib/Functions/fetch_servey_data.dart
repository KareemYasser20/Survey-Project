
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:survey_project/models/survey_model.dart';

class FetchData{
  List<SurveyModel> _loadedData = [] ;
  Future<void> fetchSurveyData() async {
    final response = await http
        .get(Uri.parse('http://192.168.1.10:8090/api/survey'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      final data = jsonResponse.map((job) => new SurveyModel.fromJson(job)).toList();
      print('code : ${response.statusCode}');

        _loadedData = data;
        print('_load : ${_loadedData[12].Employee_ID}');

    } else {
      throw Exception('Failed to load album');
    }
  }


  int getVerySadCount(List<SurveyModel> data){
    int counter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].First_Question==0){
        counter++ ;

      }
    }
    print('count : $counter');
    return counter;
  }
}











// Future<List<SurveyModel>> fetchSurveyData() async {
//   final response = await http
//       .get(Uri.parse('http://192.168.1.10:8090/api/survey'));
//
//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     print('code : ${response.statusCode}');
//     // print('Data : ${jsonDecode(response.body)}');
//     // print('end data : ${jsonDecode(response.body.toString())}');
//     List jsonResponse = json.decode(response.body);
//     final data = jsonResponse.map((job) => new SurveyModel.fromJson(job)).toList();
//     return data;
//   } else {
//     throw Exception('Failed to load album');
//   }
// }