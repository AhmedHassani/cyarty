import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color.fromRGBO(197, 203, 210, 1.0),
          image: DecorationImage(
            image: AssetImage("assets/images/bg2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}