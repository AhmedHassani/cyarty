import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/login.dart';


class ButtonStack extends StatelessWidget {
  final String title;

  ButtonStack({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(24.0),
            )),
        width: Get.width * 0.95,
        height: 55,
        child: Center(
          child: Text(
            "${title == "" ? "GET STARTED" : title}",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

