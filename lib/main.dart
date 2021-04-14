import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/main_page.dart';

// import 'circular_text_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      // ignore: missing_required_param
      home: LoginPage(),
      routes: {
        MainPage.routeName: (ctx) => MainPage(),
      },
      // ArcText(
      //     radius: 100,
      //     text: "I can't get a job because i don't have experience because",
      //     textStyle: TextStyle(
      //       fontSize: 15,
      //     ))
    );
  }
}
