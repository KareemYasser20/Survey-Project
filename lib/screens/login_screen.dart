import 'package:flutter/material.dart';
import 'package:survey_project/screens/first_question.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controllerEmployeeNumber;
  @override
  void initState() {
    super.initState();
    initUser();}

  void initUser(){
    controllerEmployeeNumber = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/login_screen_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child: Container(
            width: 350,
            height: 220,
            padding: new EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 10,),
                   Text('ادخل رقمك الوظيفي' , style: TextStyle(

                  ),
                  ),
                  SizedBox(height: 10,),
                  Directionality(
                      textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: controllerEmployeeNumber,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                            labelText: 'الرقم الوظيفي ',
                            border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.person,

                          ),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      print('Employee Number : ${controllerEmployeeNumber.text}');
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstQuestion()));
                    },
                    child: Text(' تسجيل الدخول '),
                  )

                ],
        ),
    ),
    ),
    ),
      ),
    );
  }
}
