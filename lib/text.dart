import 'package:flutter/material.dart';

import 'circular_text_page.dart';

class Text extends StatefulWidget {
  @override
  _TextState createState() => _TextState();
}

class _TextState extends State<Text> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
          child: ArcText(
              radius: 150,
              text:
                  "I can't get a job because i don't  have experience because I can't get a job because i don't  have experience because",
              textStyle: TextStyle(fontSize: 25, color: Colors.white))),
    );
  }
}
