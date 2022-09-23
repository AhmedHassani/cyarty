import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/paths/images.dart';
import '../../core/style/color_manger.dart';
import '../../core/utils/size/size_performance.dart';
import 'home.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
 List<Widget> tabs = [HomeScreen(),Container()];
 int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorManger.primary,
          appBar: AppBar(
            backgroundColor: ColorManger.primary,
            elevation: 0,
            title: Transform.translate(
                offset: Offset(-20, 0),
                child: SvgPicture.asset(ImageManger.logo,height: 130.0,fit: BoxFit.fill,)),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.message,color: ColorManger.black,)),
              IconButton(onPressed: (){}, icon: SvgPicture.asset(ImageManger.notification)),
            ],
          ),
          body: tabs[currentIndex],
          floatingActionButton: Transform.translate(
              offset: Offset(15,55),
              child: FloatingActionButton(onPressed: () {  },backgroundColor: ColorManger.blue,
              child: Icon(Icons.add,size: 30.0,),
              )),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.menu,size: 35,)),
            spaceWidth(10.0),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                width: mediaWidth(context: context,width: .8),
                child: BottomNavigationBar(
                    currentIndex: currentIndex,
                    elevation: 0.0,
                    onTap: (value){
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    unselectedItemColor: ColorManger.grey,
                    selectedItemColor: ColorManger.black,
                    items: [
                  BottomNavigationBarItem(icon:
                  Transform.translate(
                      offset: Offset(-25,5),
                      child: SvgPicture.asset(ImageManger.home,color: currentIndex==0? ColorManger.black:ColorManger.grey,)),label: ""),
                  BottomNavigationBarItem(icon: Transform.translate(
                      offset: Offset(25,7),
                      child: Image.asset(ImageManger.cal_png,color: currentIndex==1? ColorManger.black:ColorManger.grey)),label: ""),
                ]),
              )
            ],
          )
        ),
      ),
    );
  }
}

/*

 Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
           Container(
             color: ColorManger.white,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                IconButton(onPressed: (){}, icon: Icon(Icons.home)),
              ],
          ),
           )
          ],
        ),


 */