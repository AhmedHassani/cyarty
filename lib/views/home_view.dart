import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../data/login.dart';
import '../home/layout/pages/home.dart';
import '../home/layout/pages/layout.dart';
import '../main.dart';
import 'button.dart';

enum Fruit { apple, banana }

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List buttonText = ["", "SIGN IN", "SIGN UP"];
  bool showPassword = true;
  Color myc = const Color.fromRGBO(37, 43, 50, 1);
  Color bule = const Color.fromRGBO(0, 74, 188, 1);
  Fruit? _fruit = Fruit.apple;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myc,
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                currentIndex > 0
                    ? Positioned(
                  top: 50,
                  left: 0,
                  child: GestureDetector(
                    child: Container(
                      height: 35.0,
                      width: 90.0,
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/arrow-icon-back.svg",
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        currentIndex = currentIndex - 1;
                      });
                    },
                  ),
                )
                    : Container(
                  height: 35.0,
                  width: 90.0,
                ),
                Container(
                  height: 35.0,
                  width: 90.0,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        currentIndex == 0 ? selected() : indicatorPoints(),
                        currentIndex == 1 ? selected() : indicatorPoints(),
                        currentIndex == 2 ? selected() : indicatorPoints()
                      ],
                    ),
                  ),
                ),
                currentIndex != 2
                    ? Positioned(
                  top: 50,
                  right: 0,
                  child: GestureDetector(
                    child: Container(
                      height: 35.0,
                      width: 90.0,
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/arrow-icon-blue.svg",
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        currentIndex += 1;
                      });
                    },
                  ),
                )
                    : Container(
                  height: 35.0,
                  width: 90.0,
                ),

              ],
            ),
            Padding(
                padding: EdgeInsets.all(12),
                child:Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${buttonText[currentIndex]}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
            ),
            Container(
                height: Get.height*0.70,
                child: PageView.builder(
                  allowImplicitScrolling: true,
                  itemBuilder: (context, index) {
                    if (currentIndex == 0) {
                      return Container(
                        padding: EdgeInsets.all(12.0),
                        child: Center(
                          child: stared(),
                        ),
                      );
                    } else if (currentIndex == 1) {
                      return Container(
                        padding: EdgeInsets.all(12.0),
                        child: Center(
                          child: login(),
                        ),
                      );
                    } else {
                      return Container(
                        padding: EdgeInsets.all(12.0),
                        child: Center(
                          child: auth(),
                        ),
                      );
                    }
                  },
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: 3,
                ),
            ),
            GestureDetector(
              child: ButtonStack(
                title:"${buttonText[currentIndex]}",
              ),
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => LayoutScreen()),
                );
              },
            ),
            const SizedBox(height: 10,)
          ],
        )
    );
  }


  Widget stared() {
    return ListView(
      children: [
        Text(
          "WELCOME",
          style: TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Text(
          "TO",
          style: TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        Image.asset("assets/images/img.png"),
      ],
    );
  }

  Widget login() {
    return Stack(
      children: [
        currentIndex == 1
            ? Positioned(
          top: -80,
          right: -40,
          child: Image.asset("assets/images/img_1.png"),
        ): Container(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
            input(dataField: "", title: "Phone Number",controller: username),
            SizedBox(
              height: 20,
            ),
            input(dataField: "", title: "Password", isPassword: true,controller: password),
            SizedBox(
              height: 12,
            ),
            Text.rich(TextSpan(
                text: ' Dont have an account',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
                children: <InlineSpan>[
                  TextSpan(
                    text: ' Sign up',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal, color: bule),
                  )
                ])),
            Text(
              ' Forget password',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.normal, color: bule),
            )
          ],
        )
      ],
    );
  }

  Widget auth() {
    return ListView(
      children: [
        Center(
          child: Image.asset("assets/images/img_2.png"),
        ),
        SizedBox(
          height: 20,
        ),
        input(dataField: "", title: "Full Name",controller:TextEditingController() ),
        SizedBox(
          height: 20,
        ),
        input(dataField: "", title: "Phone Number",controller:TextEditingController()),
        SizedBox(
          height: 20,
        ),
        input(dataField: "", title: "Password", isPassword: true,controller:TextEditingController()),
        Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Theme(
                data: ThemeData(
                  unselectedWidgetColor: Colors.white,
                ),
                child: Container(
                  child: RadioListTile<Fruit>(
                    title: const Text(
                      'Customer',
                      style: TextStyle(color: Colors.white),
                    ),
                    activeColor: bule,
                    value: Fruit.apple,
                    groupValue: _fruit,
                    onChanged: (Fruit? value) {
                      setState(() {
                        _fruit = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Theme(
                  data: ThemeData(
                    unselectedWidgetColor: Colors.white,
                  ),
                  child: RadioListTile<Fruit>(
                    title: const Text(
                      'Service Provider',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: Fruit.banana,
                    activeColor: bule,
                    groupValue: _fruit,
                    onChanged: (Fruit? value) {
                      setState(() {
                        _fruit = value;
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(24)),
          child: DropdownButton<String>(
            isExpanded: true,
            value: "A",
            items: <String>['A', 'B'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Center(
                  child: Text(
                    value,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        )
      ],
    );
  }

  Widget input(
      {
        required String? dataField,
      bool isPassword = false,
       required TextEditingController controller,
      required String title}) {
    return TextFormField(
      textAlign: TextAlign.center,
      controller:controller ,
      onChanged: (value) {
        dataField = value;
        print("dataField = $dataField");
      },
      obscureText: isPassword
          ? showPassword
              ? true
              : false
          : false,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: title,
        border: border(),
        focusedBorder: border(),
        enabledBorder: border(),
        errorBorder: border(),
        disabledBorder: border(),
      ),
    );
  }

  Widget selected() {
    return CircleAvatar(
      radius: 5.0,
      backgroundColor: Colors.white,
    );
  }

  Widget indicatorPoints() {
    return CircleAvatar(
      radius: 5.0,
      backgroundColor: Colors.grey,
    );
  }

  border() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.0),
        borderSide: BorderSide(color: Colors.white));
  }
}

