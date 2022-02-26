import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class ThanksScreen extends StatelessWidget {
  static const String id = 'thanks_screen';

  const ThanksScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 350.0,
              height: 280.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade500,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0 , right: 15.0, top: 30.0 , bottom: 15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    Image(image: AssetImage('images/likeicon.jpg') ,width: 80.0 , height: 80.0,),
                    SizedBox(height: 15.0,),
                    Text(' تم مشاركة بياناتك بنجاح \n شكرا لوقتك،، رأيك يهمنا. '),
                    SizedBox(height: 15.0,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginScreen()));
                      },
                      child: Text(' العودة للصفحة الرئيسية '),
                    ),


                  ],
                ),
              ),
            ),
            Container(
              width: 250.0,
              height: 250.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
