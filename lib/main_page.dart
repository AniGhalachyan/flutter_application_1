import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/bubble.dart';
import 'package:image_picker/image_picker.dart';

class MainPage extends StatefulWidget {
  static const routeName = '/main';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    PickedFile pickerFile = await picker.getImage(
      source: ImageSource.camera,
    );

    if (pickerFile != null) {
      setState(() {
        _image = File(pickerFile.path);
      });
    }
  }

  Future getGalery() async {
    PickedFile pickedFile1 = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile1 != null) {
      setState(() {
        _image = File(pickedFile1.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(42, 45, 92, 1),
      appBar: _appBar(),
      body: _body(),
    ));
  }

  Widget _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        decoration: BoxDecoration(),
        child: Center(
            child: Text(
          "Hearme",
          style: TextStyle(
            fontSize: 25,
            color: Colors.grey,
          ),
        )),
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Stack(children: <Widget>[
        Positioned(
          child: bubble(40, Color.fromRGBO(252, 255, 102, 1)),
          top: 220,
          left: 90,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  " Welcome back!",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Raleway'),
                ),
              ),
            ),
            _image != null
                ? Container(
                    margin: EdgeInsets.only(top: 60, bottom: 90),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        border: Border.all(color: Colors.white, width: 3),
                        image: DecorationImage(
                            image: FileImage(_image), fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(52, 53, 100, 0.4),
                              spreadRadius: 60,
                              blurRadius: 40,
                              offset: Offset(2, 0))
                        ]),
                  )
                : Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top: 60, bottom: 40),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white),
                          child: IconButton(
                            icon: Icon(Icons.add_a_photo),
                            onPressed: () {
                              getImage();
                            },
                          )),
                      Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: FlatButton(
                            child: Text(
                              "Choose photo ",
                              style: TextStyle(
                                fontFamily: "Raleway",
                                fontSize: 15,
                              ),
                            ),
                            onPressed: () {
                              getGalery();
                            },
                          )),
                    ],
                  ),
            Container(
              padding: EdgeInsets.only(top: 20),
              width: 250,
              height: 70,
              child: FlatButton(
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                color: Color.fromRGBO(40, 39, 85, 1),
                onPressed: () {},
                child: Center(
                  child: Text(
                    "Login As Chester",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 10),
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  child: Container(
                    child: Text(
                      "DELETE ACCOUNT",
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          child: bubble(55, Color.fromRGBO(81, 93, 235, 1)),
          top: 120,
          right: 95,
        ),
        Positioned(
          child: bubble(55, Color.fromRGBO(246, 56, 56, 1)),
          top: 230,
          left: 110,
        ),
        Positioned(
          child: bubble(25, Color.fromRGBO(246, 56, 56, 1)),
          top: 220,
          right: 70,
        ),
      ]),
    );
  }
}
