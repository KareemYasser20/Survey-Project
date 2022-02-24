import 'package:auto_size_text/auto_size_text.dart';
import 'package:im_stepper/stepper.dart';
import 'package:flutter/material.dart';
import '../Functions/images_text_function.dart';
import '../widgets/EmojiWidget.dart';


class FirstQuestion extends StatefulWidget {
  static const String id = 'first_question_screen';
  const FirstQuestion({Key key}) : super(key: key);


  @override
  _FirstQuestionState createState() => _FirstQuestionState();

}

class _FirstQuestionState extends State<FirstQuestion> {
  int activeStep = 0;
  int upperBound = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(
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
                        EmojiWidget(text: 'غير راضي جدا' , imagePath:'images/very_happy_emoji.png' , emojiRate: 0),
                        EmojiWidget(text: 'غير راضي' , imagePath:'images/very_happy_emoji.png' , emojiRate: 1),
                        EmojiWidget(text: 'متوسط' , imagePath:'images/very_happy_emoji.png' , emojiRate: 2),
                        EmojiWidget(text: 'راضي' , imagePath:'images/very_happy_emoji.png' , emojiRate: 3),
                        EmojiWidget(text: 'راضي جدا' , imagePath:'images/very_happy_emoji.png' , emojiRate: 4),

                      ],
                      ),
              ),
            ),

                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        if (activeStep < upperBound) {
                        setState(() {
                        activeStep++;
                        });
                        }
                        },
                        child: Text('التالي'),
                        ),
                    ),
                  ],
            ),

            SizedBox(height: 60.0,),
            Center(child: Image(image: AssetImage('images/logo.png'))),

          ],
        ),
      ),

    );
  }
}

