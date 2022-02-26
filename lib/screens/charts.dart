import 'package:flutter/material.dart';
import 'package:survey_project/models/survey_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Functions/question_counts_Functions.dart';
import '../widgets/pie_chart_widget.dart';
import '../widgets/text_chart_widget.dart';

class Charts extends StatefulWidget {
  static const String id = 'charts_screen';
  const Charts({Key key}) : super(key: key);

  @override
  _ChartsState createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {
  List<SurveyModel> _loadedData = [] ;

  Future<void> fetchSurveyData() async {
    final response = await http
        .get(Uri.parse('http://192.168.1.10:8090/api/survey'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      final data = jsonResponse.map((job) => new SurveyModel.fromJson(job)).toList();
      print('code : ${response.statusCode}');
      setState(() {
         _loadedData = data;
      });
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
     fetchSurveyData();
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
                  TextChartWidget(text: ' أخبارك ايه النهارده؟ ',),
                  PieChartWidget(map: QuestionsCount.getFirstQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' لما بتروح العيادة،بتلاقي سهولة في التعامل وتسجيل اجازاتك ',),
                  PieChartWidget(map: QuestionsCount.getSecondQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' هل بتقبض مرتبك في ميعاده؟ ',),
                  PieChartWidget(map: QuestionsCount.getThirdQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' شايف الرحلات الشهريه للشركة بتغيرلك جو؟ ',),
                  PieChartWidget(map: QuestionsCount.getFourthQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' البريك/الكانتين، أفضل من زمان ',),
                  PieChartWidget(map: QuestionsCount.getFifthQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' وقت الراحه بتاعك حد بيمنعك عنه؟ ',),
                  PieChartWidget(map: QuestionsCount.getSixthQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' اليونيفورم عاجبك؟ ',),
                  PieChartWidget(map: QuestionsCount.getSeventhQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' الحمامات نظيفة؟ ',),
                  PieChartWidget(map: QuestionsCount.getEighthQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' لما بتركب الباص بتبقا مرتاح؟ ',),
                  PieChartWidget(map: QuestionsCount.getNinthQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' مديرك في العمل بيساعدك تكبر؟ ',),
                  PieChartWidget(map: QuestionsCount.getTenthQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' زملائك ومديرك بيحترموك؟ ',),
                  PieChartWidget(map: QuestionsCount.getEleventhQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' لو عندك مشكلة بتعرف توصلها؟ ',),
                  PieChartWidget(map: QuestionsCount.getTwelfthQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' الجودة مسئوليتنا كلنا... هل أنت راضي عن جودة عملك؟ ',),
                  PieChartWidget(map: QuestionsCount.getThirteenthQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' لو شايف أن فيه ترقيات داخلية،،بتعتبرها فرصة تكبر في شغلك ',),
                  PieChartWidget(map: QuestionsCount.getFourteenthQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' شايف نفسك جزء من فريق العمل وبتشارك في تحسين الجودة؟ ',),
                  PieChartWidget(map: QuestionsCount.getFifteenthQuestionsCount(_loadedData),),

                  TextChartWidget(text: ' هل التدريب الذي تحصل عليه بصفة دورية كافي لتأدية عملك بالجودة المطلوبة؟ ',),
                  PieChartWidget(map: QuestionsCount.getSixteenthQuestionsCount(_loadedData),),

                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}



