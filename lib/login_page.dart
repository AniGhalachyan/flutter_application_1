import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_page.dart';
import 'package:flutter_application_1/widget/bubble.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(42, 45, 92, 1),
        appBar: _appBar(),
        body: _body(),
      ),
    );
  }

  Widget _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
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
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Center(
                      child: Text(
                    "Create Account",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoCondensed'),
                  )),
                ),
                Container(
                  padding: EdgeInsets.only(left: 50, top: 40),
                  child: Text(
                    "EMAIL",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 50, right: 50, top: 5),
                  child: TextField(
                      textAlign: TextAlign.start,
                      autofocus: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          hintText: "Email",
                          filled: true,
                          fillColor: Color.fromRGBO(40, 39, 85, 1),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none))),
                ),
                Container(
                  padding: EdgeInsets.only(left: 50, top: 10),
                  child: Text(
                    "PASSWORD",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 40),
                  child: TextField(
                      textAlign: TextAlign.start,
                      autofocus: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          hintText: "password",
                          filled: true,
                          fillColor: Color.fromRGBO(40, 39, 85, 1),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none))),
                ),
                Column(
                  children: [
                    Center(
                      child: Container(
                        // padding: EdgeInsets.only(top: 40),
                        height: MediaQuery.of(context).size.height / 11,
                        width: 250,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.only(
                        //       topLeft: Radius.circular(10),
                        //       topRight: Radius.circular(10),
                        //       bottomLeft: Radius.circular(10),
                        //       bottomRight: Radius.circular(10)),
                        //   boxShadow: [
                        //     BoxShadow(
                        //       // color: Colors.grey.withOpacity(0.5),
                        //       spreadRadius: -20,
                        //       blurRadius: 25,
                        //       offset:
                        //           Offset(0, 3), // changes position of shadow
                        //     ),
                        //   ],
                        // ),
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          color: Color.fromRGBO(40, 39, 85, 1),
                          onPressed: () {
                            Navigator.of(context).pushNamed(MainPage.routeName);
                          },
                          child: Center(
                            child: Text(
                              "REGISTER",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
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
                            child: RichText(
                                text: TextSpan(
                                    text: " or sign in whit ",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: "  facebook",
                                      style: TextStyle(
                                          color: Colors.grey.shade200,
                                          fontSize: 14,
                                          fontFamily: 'Raleway'))
                                ])),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            child: bubble(70, Color.fromRGBO(246, 56, 56, 1)),
            top: 450,
            left: -30,
          ),
          Positioned(
            child: bubble(
              60,
              Color.fromRGBO(249, 204, 57, 1),
            ),
            top: 550,
            left: 25,
          ),
          Positioned(
            child: bubble(30, Color.fromRGBO(81, 93, 235, 1)),
            top: 520,
            right: 250,
          ),
          Positioned(
            child: bubble(70, Color.fromRGBO(246, 56, 56, 1)),
            top: 540,
            right: 130,
          ),
          Positioned(
            child: bubble(
              45,
              Color.fromRGBO(249, 204, 57, 1),
            ),
            top: 480,
            right: 70,
          ),
          Positioned(
            child: bubble(70, Color.fromRGBO(81, 93, 235, 1)),
            top: 420,
            right: -35,
          ),
        ],
      ),
    );
  }
}
