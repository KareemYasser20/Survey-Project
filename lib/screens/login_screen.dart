import 'package:flutter/material.dart';
import 'package:survey_project/screens/charts.dart';
import 'package:survey_project/screens/questions_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controllerEmployeeNumber;

  @override
  void initState() {
    super.initState();
    initUser();
  }



  void initUser(){
    controllerEmployeeNumber = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    int employeeID;
    return ScreenUtilInit(
      designSize: Size(360 , 690) ,
      builder: ()=> Scaffold(
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
              width: 380,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // SizedBox(height: 10,),
                       Text('ادخل رقمك الوظيفي' , style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 18.0
                      ),
                      ),
                      SizedBox(height: 10,),
                      Directionality(
                          textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (value){
                              if(value.isEmpty){
                                return ' برجاء إدخال الرقم الوظيفي. ' ;
                              }
                              return null;
                            },
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
                          if(!_formKey.currentState.validate()){
                            return;
                          }
                          setState(() {
                            employeeID = int.parse(controllerEmployeeNumber.text);
                          });
                          if(employeeID == 12345 ){
                            // admin id to see charts
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Charts()));
                          }else {
                            FocusScope.of(context).unfocus();
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  Questions(employeeId: employeeID,)));
                          }
                          },
                        child: Text(' تسجيل الدخول '),
                      )

                    ],
          ),
                ),
              ),
      ),
      ),
        ),
      ),
    );
  }
}
