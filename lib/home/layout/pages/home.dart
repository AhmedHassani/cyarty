import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../core/style/color_manger.dart';
import '../../core/style/style.dart';
import '../../core/utils/size/size_performance.dart';
import '../../layout_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> icCheckList = [true,false,false];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LayoutWidgets.searchBar(context),
              spaceHeight(25.0),
              Text("  SERVICES",style: StyleManger.blackColor21MediumW700(),),
              spaceHeight(10.0),
              tabBarWidgets(),
              spaceHeight(10.0),
              LayoutWidgets.postData(),
              SizedBox(height: 20,),
              LayoutWidgets.postData(),
              SizedBox(height: 20,),
              LayoutWidgets.postData(),
            ],
        ),
      ),
    );
  }
  Widget tabBarWidgets(){
    return TabBar(
        indicatorColor: Colors.transparent,
        // padding: const EdgeInsets.all(0),
        isScrollable: true,
        labelPadding:  const EdgeInsets.all(3),
        onTap: (value){
          print("value $value");
          print("icCheckList  $icCheckList");
          switch(value){
            case 0 :
              setState(() {
                icCheckList = icCheckList.map((e) => e = false).toList();
                icCheckList[0] = !icCheckList[0];
              });
              break;
            case 1 :
              icCheckList = icCheckList.map((e) => e = false).toList();
              icCheckList[1] = !icCheckList[1];
              setState(() {});
              break;
            case 2 :
              icCheckList = icCheckList.map((e) => e = false).toList();
              icCheckList[2] = !icCheckList[2];
              setState(() {});
              break;

          }
        },
        // indicatorPadding: const EdgeInsets.all(0),
        tabs: [
          tabs(title: "All",color: icCheckList[0]?ColorManger.blue:ColorManger.grey),
          tabs(title: "spare Part",color: icCheckList[1]?ColorManger.blue:ColorManger.grey),
          tabs(title: "Car For Sale",color: icCheckList[2]?ColorManger.blue:ColorManger.grey),


        ]);
  }
  Widget tabs({required String title,required Color color}){
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: 125.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0)
      ),
      child:
      Center(child: Text("$title",style: StyleManger.whiteColor14MediumW700(),)),
    );
  }
}
