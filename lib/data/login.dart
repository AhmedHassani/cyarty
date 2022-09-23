import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:get/get_connect/connect.dart';

class LoginService {


  void login(String username, String password) async {

    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body:{
        'title': "hh",
      },
    );
    print("data is : ${response.body}");
    /* if (response.statusCode == 200) {
      return TicketReply.fromJson(response.body);
    } else {
      return Future.error(response.statusText!);
    }*/
  }
}

