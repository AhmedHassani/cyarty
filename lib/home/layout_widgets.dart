import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/paths/images.dart';
import 'core/paths/networl_path.dart';
import 'core/style/color_manger.dart';
import 'core/style/style.dart';
import 'core/utils/size/size_performance.dart';

class LayoutWidgets {
  static Widget searchBar(BuildContext context) {
    OutlineInputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: ColorManger.white));
    return Row(
      children: [
        Container(
          width: mediaWidth(context: context, width: .75),
          height: 60,
          padding: const EdgeInsets.all(5),
          child: TextFormField(
            decoration: InputDecoration(
              border: border,
              enabledBorder: border,
              focusedBorder: border,
              disabledBorder: border,
              hintText: "Search",
              filled: true,
              fillColor: ColorManger.white,
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        spaceWidth(15.0),
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: ColorManger.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Transform.translate(
                  offset: Offset(-3, -3),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.filter_alt_rounded)))),
        )
      ],
    );
  }

  static postData() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        height: 400.0,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: ColorManger.white),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                right: 10,
                child: Transform.translate(
                    offset: Offset(0, -10),
                    child: IconButton(icon: Icon(Icons.more_horiz), onPressed: () {  },))),
            Positioned(
                top: 20.0,
                left: 20,
                right: 20,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        profileScreen(),
                        spaceWidth(10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("FADI RAMZI MOHAMED ",style: StyleManger.blackColor16MediumW700(),),
                            Text("31/3/2022",style: StyleManger.greyColor12MediumW700() ,),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            spaceHeight(10.0),
                            Text(
                              "FOR SALE",
                              style: StyleManger.greyColor12MediumW700(),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          " FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                          "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                          "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                          "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                          "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                          "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    )
                  ],
                )),
            Positioned(
                top: 160,
                left: 0,
                right: 0,
                bottom: 0,
                child: Image.network(
                  NetworkPathImage.img,
                  height: 150.0,
                  width: 150.0,
                  fit: BoxFit.fill,
                )),
            Positioned(
                bottom: 5,
                left: 10,
                right: 10,
                height: 50.0,
                child: Row(
                  children: [
                    Flexible(
                        child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: ColorManger.white.withOpacity(.5),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15.0))),
                        child: Icon(Icons.chat,color: ColorManger.white,),
                      ),
                    )),
                    spaceWidth(5.0),
                    Flexible(
                        child: InkWell(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: ColorManger.white.withOpacity(.5),
                        ),
                        child: Icon(Icons.call,color: ColorManger.white,),
                      ),
                    )),
                    spaceWidth(5.0),
                    Flexible(
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: ColorManger.white.withOpacity(.5),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15.0)),
                            ),
                            child: Image.asset(ImageManger.chat,height: 25.0,),
                          ),
                        )),

                  ],
                )),
            Positioned(
                top: 170,
                right: 10.0,
                child: Chip(
                    backgroundColor: ColorManger.white,
                    label: Text("30.000"))),
            Positioned(
                top: 250,
                right: 10.0,
                child: CircleAvatar(
                    backgroundColor: ColorManger.grey,
                    radius: 15,
                    child: Transform.translate(
                        offset: Offset(-2,-3),
                        child: IconButton(icon: Icon(Icons.arrow_forward,size: 20,color: ColorManger.black,), onPressed: () {  },)))),
            Positioned(
                top: 250,
                left: 10.0,
                child: CircleAvatar(
                    backgroundColor: ColorManger.grey,
                    radius: 15,
                    child: Transform.translate(
                        offset: Offset(-2,-3),
                        child: IconButton(icon: Icon(Icons.arrow_back,size: 20,color: ColorManger.black,), onPressed: () {  },))))

          ],
        ),
      ),
    );
  }

  static Widget profileScreen() {
    return Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(NetworkPathImage.profileImg))),
    );
  }
}
