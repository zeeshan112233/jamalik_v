import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class GetStaff {
  Future<List> getstaff({
    String providerid,
  }) async {
    print(" here i am  "+providerid);
    Map<String, String> requestHeaders = {
      'Accept': 'application/json',
    };

    final uri = 'http://51.222.107.49/api/Services/GetProviderStaff?ProviderID='
    +providerid
    ;

    http.Response response = await http.get(uri, headers: requestHeaders);
    print(" called  ");

    print("my body " + response.body);

    if (response.statusCode == 200) {
      print(" 200 ");

      return 
        json.decode(response.body);
      
    } else if (response.statusCode == 400) {
      print(" 400 ");

      return null;
    } else {
      print(" error ");

      throw Exception('Failed to load data!');
    }
  }
}
