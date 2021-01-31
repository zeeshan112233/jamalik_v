import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/staffmodel.dart';

class Addstaff {
  Future<staff> addstaff({
    String firstName,
    String lastName,
    String gender,
    String email,
    String phonenumber,
    String description,
    String providerid
  }) async {
    Map<String, dynamic> body = {
      'FirstName': firstName,
      'LastName': lastName,
      'Email': email,
      'Gender': gender,
      'MobileNo': phonenumber,
      'Description': description,
      'Provider_id':providerid,
    };

    Map<String, String> requestHeaders = {
      'Accept': 'application/json',
    };
print("a gya h ");
    final uri = 'http://51.222.107.49/api/Provider/StaffRegistration';

    http.Response response =
        await http.post(uri, body: body, headers: requestHeaders);
print("my body " + response.body);

    if (response.statusCode == 200) {
      return staff.fromJson(
        json.decode(response.body),
      );
    } else if (response.statusCode == 400) {
      print(" 400 " );

      return staff.fromJson(
        json.decode(response.body),
        
      );
    
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
