import 'package:auto_size_text/auto_size_text.dart';
import 'package:im_stepper/stepper.dart';
import 'package:flutter/material.dart';
import 'package:survey_project/Functions/insert_data_function.dart';
import 'package:survey_project/screens/thanks_screen.dart';
import '../Functions/images_text_function.dart';
import '../widgets/EmojiWidget.dart';

class Questions extends StatefulWidget {
  static const String id = 'first_question_screen';

  Questions({Key key , @required this.employeeId}) : super(key: key);
  final int employeeId;
  @override
  _QuestionsState createState() => _QuestionsState();

}

class _QuestionsState extends State<Questions> {

  @override
  void initState() {
    super.initState();
    surveyData.insert(0 , widget.employeeId);
  }

  int activeStep = 0;
  int upperBound = 15;
  List<int> surveyData = [];
  int emojiRate ;
  String nextButtonText = 'التالي';
  bool _emojiValidation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              NumberStepper(
                numbers: [
                  1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16
                ],
                stepColor: Colors.white,
                lineColor: Colors.black12,
                activeStepColor: Colors.white,
                activeStepBorderColor: Colors.blue,
                lineLength: 18.0,
                activeStep: activeStep,
                onStepReached: (index){
                  setState(() {
                    activeStep = index;
                  });
                },
              ),

            SizedBox(height: 15.0,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                          Expanded(
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: AutoSizeText(
                                DataFunction.headerText(activeStep),
                                maxLines: 3,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),

                           SizedBox(width: 10.0,),

                          Expanded(
                            child: Container(
                              width: 100.0,
                              height: 140.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(DataFunction.imageText(activeStep)),
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0 , bottom: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          EmojiWidget(
                              text: 'غير راضي جدا' ,
                              imagePath:'images/very_sad_emoji.png' ,
                              emojiRate: 0,
                            onClicked: (){
                              setState(() {
                                emojiRate = 0;
                                _emojiValidation = true;
                                surveyData.insert(activeStep+1,emojiRate);
                                if(activeStep < upperBound){
                                  activeStep++;
                                  _emojiValidation = false;
                                }else if(activeStep == upperBound){
                                  nextButtonText='إنهاء';
                                }
                              });
                            },
                          ),
                          EmojiWidget(
                              text: 'غير راضي' ,
                              imagePath:'images/sad_emoji.png' ,
                              emojiRate: 1,
                            onClicked: (){
                              setState(() {
                                emojiRate = 1;
                                _emojiValidation = true;
                                surveyData.insert(activeStep+1,emojiRate);
                                if(activeStep < upperBound){
                                  activeStep++;
                                  _emojiValidation = false;
                                }else if(activeStep == upperBound){
                                  nextButtonText='إنهاء';
                                }
                              });
                            },
                          ),
                          EmojiWidget(
                              text: 'متوسط' ,
                              imagePath:'images/medium_emoji.png' ,
                              emojiRate: 2,
                            onClicked: (){
                              setState(() {
                                _emojiValidation = true;
                                emojiRate = 2;
                                surveyData.insert(activeStep+1,emojiRate);
                                if(activeStep < upperBound){
                                  activeStep++;
                                  _emojiValidation = false;
                                }else if(activeStep == upperBound){
                                  nextButtonText='إنهاء';
                                }
                              });
                            },
                          ),
                          EmojiWidget(
                              text: 'راضي' ,
                              imagePath:'images/happy_emoji.png' ,
                              emojiRate: 3,
                            onClicked: (){
                              setState(() {
                                _emojiValidation = true;
                                emojiRate = 3;
                                surveyData.insert(activeStep+1,emojiRate);
                                if(activeStep < upperBound){
                                  activeStep++;
                                  _emojiValidation = false;
                                }else if(activeStep == upperBound){
                                  nextButtonText='إنهاء';
                                }
                              });
                            },
                          ),
                          EmojiWidget(
                              text: 'راضي جدا' ,
                              imagePath:'images/very_happy_emoji.png' ,
                              emojiRate: 4,
                            onClicked: (){
                              setState(() {
                                _emojiValidation = true;
                                emojiRate = 4;
                                surveyData.insert(activeStep+1,emojiRate);
                                if(activeStep < upperBound){
                                  activeStep++;
                                  _emojiValidation = false;
                                }else if(activeStep == upperBound){
                                  nextButtonText='إنهاء';
                                }
                              });
                            },
                          ),

                        ],
                        ),
                ),
              ),

                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary:Colors.white,
                            onPrimary: Colors.black,
                          ),
                          onPressed: () {
                          // Decrement activeStep, when the previous button is tapped. However, check for lower bound i.e., must be greater than 0.
                          if (activeStep > 0) {
                          setState(() {
                            activeStep--;
                            surveyData.removeAt(activeStep+1);
                             });
                            }
                           },
                          child: Text('السابق'),
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                          // Increment activeStep, when the next button is tapped. However, check for upper bound.
                          if (activeStep < upperBound && _emojiValidation == true) {
                          setState(() {
                          activeStep++;
                          });
                          } else if (activeStep == upperBound && _emojiValidation == true ){
                            setState(() {
                               nextButtonText = 'إنهاء';
                               print('Last Survey Data : $surveyData');
                               InsertData.insertSurveyData(surveyData);
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => ThanksScreen())
                               );

                            });
                          }
                          },
                          child: Text(nextButtonText),
                          ),
                      ),
                    ],
              ),

              SizedBox(height: 100.0,),
              Container(
                width: 100.0,
                height: 100.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              // Center(child: Image(image: AssetImage('images/logo.png'))),

            ],
          ),
        ),
      ),

    );
  }
}