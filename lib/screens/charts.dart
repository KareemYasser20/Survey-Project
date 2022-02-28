import 'package:flutter/material.dart';
import 'package:survey_project/models/survey_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:survey_project/screens/login_screen.dart';
import '../Functions/images_text_function.dart';
import '../Functions/question_counts_Functions.dart';
import '../widgets/pie_chart_widget.dart';
import '../widgets/text_chart_widget.dart';

class Charts extends StatefulWidget {

  // Charts page ==> retrieve data from data base using api ===> fetch method and create charts to fetch data

  static const String id = 'charts_screen';
  Charts();

  @override
  _ChartsState createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {

  List<SurveyModel> dataList;
  List<Map<String , double>> answerCount = [];

  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('http://192.168.182.42:8090/api/survey'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      final data = jsonResponse.map((job) => new SurveyModel.fromJson(job)).toList();
      print('code : ${response.statusCode}');
      setState(() {
        dataList = data;
        answerCount = QuestionsCount.allQuestionsCounts(data);
      });
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 770.0,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: answerCount.length,
                        itemBuilder: (BuildContext context , int index){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            TextChartWidget(text: DataFunction.headerText(index),),
                            PieChartWidget(map: answerCount[index],),

                          ],
                      );
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginScreen()));
                        },
                        child: Text(' العودة للصفحة الرئيسية '),
                      ),
                    ),
                  )
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}