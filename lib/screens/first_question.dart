
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstQuestion extends StatefulWidget {
  static const String id = 'first_question_screen';
  const FirstQuestion({Key key}) : super(key: key);

  @override
  _FirstQuestionState createState() => _FirstQuestionState();
}

class _FirstQuestionState extends State<FirstQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(

          children: <Widget>[
            Container(
              height: 500,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Container(
                    height: 180,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 90,
                            color: Colors.grey.shade500,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('أخبارك ايه النهارده؟ '   )),

                          ),
                        ),

                        Image(
                          image: AssetImage('images/loginscreen_background.jpg'),
                          height: 250,
                          width: 150,
                        ),

                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            FlatButton(
                              onPressed: (){
                                print(0);
                              },

                              child: Image(
                                image: AssetImage('images/very_happy_emoj.png'),
                              ),
                            ),
                            Text(' غير راضي جدا'),


                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/very_happy_emoj.png'),
                            ),
                            Text('غير راضي'),


                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/very_happy_emoj.png'),
                            ),
                            Text('متوسط'),


                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/very_happy_emoj.png'),
                            ),
                            Text('راضي '),


                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/very_happy_emoj.png'),
                            ),
                            Text('راضي جدا'),


                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],



        ),
      ),

    );
  }
}
