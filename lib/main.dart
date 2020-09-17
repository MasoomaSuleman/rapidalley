import 'package:flutter/material.dart';
import './widgets/login_form.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rapidalley',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.red,
        canvasColor: Colors.black87.withOpacity(0.9),
        fontFamily: 'Lato',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Colors.grey,
            ),
            bodyText2: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            headline6: TextStyle(
              //fontSize: 20,
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
            )),
      ),
      home:  LoginForm(),
      

      routes: {
      
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx)=>LoginForm() );
      },
    );
  }
}

