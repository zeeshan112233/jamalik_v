import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/My_response.dart';

class Signup {
  Future<UserSignup> signup({
    String firstName,
    String lastName,
    String gender,
    String email,
    String phonenumber,
    String password,
    String providertype
  }) async {
    Map<String, dynamic> body = {
      'FirstName': firstName,
      'LastName': lastName,
      'Email': email,
      'Gender': gender,
      'Mobile': phonenumber,
      'Password': password,
      'ProviderType':providertype,
      'Photo':"http://51.222.107.49/api/Provider/PostProviderImage/"
    };

    Map<String, String> requestHeaders = {
      'Accept': 'application/json',
    };
print("a gya h ");
    final uri = 'http://51.222.107.49/api/Provider/ProviderRegistration/';

    http.Response response =
        await http.post(uri, body: body, headers: requestHeaders);
    print("my body " + response.body);

    if (response.statusCode == 200) {
      return UserSignup.fromJson(
        json.decode(response.body),
      );
    } else if (response.statusCode == 400) {
      return UserSignup.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
