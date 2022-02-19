import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:pickandgo/services/storage_service.dart';

class ApiClient {

  final String _baseURL =  dotenv.get('API_URL');

  post(String url,  body) async {
    var token = await StorageService().get('token');
    return _transformer(await http.post(
        Uri.parse("$_baseURL$url"),
        body: body,
        headers: {
          'Authorization': 'Bearer $token',
        }
    ));
  }

  get(String url) async {
    var token = await StorageService().get('token');

    return _transformer(
        await http.get(
          Uri.parse("$_baseURL$url"),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': 'Bearer $token',
            }
        )
    );
  }

  _transformer(Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    if (response.statusCode == 401) {
      throw Exception('Invalid username or password');
    }

    if (response.statusCode == 422) {
      throw Exception('Unprocessable entity');
    }

    if (response.statusCode == 500) {
      throw Exception('Internal server error');
    }
  }

}