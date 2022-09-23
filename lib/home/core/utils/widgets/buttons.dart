// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
//
// class CommonButtons {
//   static Widget RoundedButton({
//     required Color color,
//      VoidCallback? onTap,
//     required String buttonTitle,
//     required TextStyle style,
//     double width = double.infinity
//
//   }){
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(18.0),
//       child: Container(
//         width: width,
//         height: 40.0,
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(18.0),
//           // border: Border.all(color: ColorManger.lightGrey,width: .5)
//         ),
//         child: MaterialButton(
//           onPressed: onTap,
//           child: Text(buttonTitle,style: style,) ,
//         ),
//       ),
//     );
//   }
//  static Widget commonField({required String? dataField,
//     bool isPassword = false,
//     required String title,
//     required String hintText,
//    bool isMinSize = false,
//   }) {
//     bool showPassword = true;
//     return StatefulBuilder(
//       builder: (context,state)=>
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: isMinSize? MainAxisSize.min: MainAxisSize.max,
//
//         children: [
//           Text(title.tr(), style: StyleManger.greyColor318BoldStyle(),),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             decoration: BoxDecoration(
//                 color: ColorManger.fewWhite,
//                 border: Border.all(color: ColorManger.lightGold),
//                 shape: BoxShape.rectangle,
//                 borderRadius: BorderRadius.circular(10.0)
//             ),
//             child: TextFormField(
//               onChanged: (value) {
//                 dataField = value;
//               },
//               obscureText: isPassword? showPassword? true : false : false,
//               decoration: InputDecoration(
//                   fillColor: ColorManger.fewWhite,
//                   filled: true,
//                   hintText: hintText,
//                   suffixIcon: isPassword? IconButton(onPressed: (){
//                     state(() {
//                       showPassword = !showPassword;
//                     });
//                   }, icon: Icon(showPassword ?Icons.visibility : Icons.visibility_off)):null
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }