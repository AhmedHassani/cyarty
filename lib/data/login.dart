import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:get/get_connect/connect.dart';

class LoginService {


  Future<String> login(String username, String password) async {

    var map = new Map<String, dynamic>();
    map['phone'] = username;
    map['password'] = password;

    final response = await http.post(
      Uri.parse('Http://cyarty.com/api/v1/auth/login'),
      body: map,
    );
    return json.decode(response.body);
    /* if (response.statusCode == 200) {
      return TicketReply.fromJson(response.body);
    } else {
      return Future.error(response.statusText!);
    }*/
  }
}

