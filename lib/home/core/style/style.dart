import 'package:flutter/cupertino.dart';

import 'color_manger.dart';




class StyleManger {
  static TextStyle whiteColor21MediumW700(){
    return TextStyle(
        color: ColorManger.white,
        fontSize: 21,
        fontWeight: FontWeight.bold
    );
  }
  static TextStyle whiteColor14MediumW700(){
    return TextStyle(
        color: ColorManger.white,
        fontSize: 14,
        fontWeight: FontWeight.bold
    );
  }

  static TextStyle blackColor12MediumW700(){
    return TextStyle(
        color: ColorManger.black,
        fontSize: 12,
        fontWeight: FontWeight.w400
    );
  }
  static TextStyle blackColor16MediumW700(){
    return TextStyle(
        color: ColorManger.black,
        fontSize: 14,
        fontWeight: FontWeight.w400
    );
  }

  static TextStyle greyColor12MediumW700(){
    return TextStyle(
        color: ColorManger.grey,
        fontSize: 12,
        fontWeight: FontWeight.w400
    );
  }

  static TextStyle blackColor21MediumW700(){
    return TextStyle(
        color: ColorManger.black,
        fontSize: 18,
        fontWeight: FontWeight.bold
    );
  }


}