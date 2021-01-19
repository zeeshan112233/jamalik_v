import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/My_response.dart';

class Login {
  Future<User> login({
    String phonenumber,
    String password,
  }) async {
    Map<String, dynamic> body = {
      'Mobile': phonenumber,
      'Password': password,
    };

    Map<String, String> requestHeaders = {
      'Accept': 'application/json',
    };

    final uri = 'http://51.222.107.49/api/Customer/CustomerLogin';

    http.Response response =
        await http.post(uri, body: body, headers: requestHeaders);
    print("my body " + response.body);

    if (response.statusCode == 200) {
      return User.fromJson(
        json.decode(response.body),
      );
    } else if (response.statusCode == 400) {
      return User.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
