import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  final _storageClient = const FlutterSecureStorage();
  static final StorageService _instance = StorageService._internal();

  factory StorageService() {
    return _instance;
  }

  StorageService._internal();

  Future<void> add(String key, String value) async {
    await _storageClient.write(key: key, value: value);
  }

  Future<String?> get(String key) async {
    return _storageClient.read(key: key);
  }

  Future<void> delete(String key) async {
    await _storageClient.delete(key: key);
  }

}