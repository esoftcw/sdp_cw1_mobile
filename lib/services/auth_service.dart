import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pickandgo/clients/api_client.dart';
import 'package:pickandgo/services/storage_service.dart';


class AuthService extends ChangeNotifier{

  AuthService() {
    checkIsAlreadyLogin();
  }

  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  Future<void> checkIsAlreadyLogin() async {
    var token = await StorageService().get('token');
    if (token != null && !JwtDecoder.isExpired(token)) {
      _isLoggedIn = true;
      notifyListeners();
    }
  }

  Future<void> login(String email, String password) async {
    var data = await ApiClient().post('login', {
      'email': 'sadsa',
      'password': password
    });
    var token = data['access_token'];
    if (token != null) {
      _isLoggedIn = true;
      StorageService().add('token', data['access_token']);
      notifyListeners();
    }
  }

  Future<void> logout() async {
    _isLoggedIn = false;
    await StorageService().delete('token');
    notifyListeners();
  }

}