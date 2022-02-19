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
  String _role = "na";

  bool get isLoggedIn => _isLoggedIn;
  String get role => _role;

  Future<void> checkIsAlreadyLogin() async {
    var token = await StorageService().get('token');
    if (token != null && !JwtDecoder.isExpired(token)) {
      _isLoggedIn = true;
      _role = (await StorageService().get('role'))!;
      notifyListeners();
    }
  }

  Future<void> login(String email, String password) async {
    var data = await ApiClient().post('login', {
      'email': email,
      'password': password
    });
    var token = data['access_token'];
    if (token != null) {
      print(data['user']['role']);
      _isLoggedIn = true;
      _role = data['user']['role'];
      StorageService().add('token', data['access_token']);
      StorageService().add('role', data['user']['role']);
      notifyListeners();
    }
  }

  Future<void> logout() async {
    _isLoggedIn = false;
    await StorageService().delete('token');
    await StorageService().delete('role');
    notifyListeners();
  }

}