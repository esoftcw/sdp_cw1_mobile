import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class ApiClient {

  final String _baseURL =  dotenv.get('API_URL');

  post(String url, Map<String, dynamic> body) async {
    var response = await http.post(
        Uri.parse("$_baseURL$url"),
        body: body
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    if (response.statusCode == 401) {
      throw Exception('Invalid username or password');
    }
  }

}