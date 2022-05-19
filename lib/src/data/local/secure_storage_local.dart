import 'package:alex_astudillo_erp/src/domain/repositories/local/secure_storage_repository.dart';

class SecureStorageLocal implements SecureStorageRepository {
  const SecureStorageLocal();

  static String? _jwtToken;

  @override
  Future<String?> get jwtToken async {
    return _jwtToken;
  }

  @override
  Future<void> saveToken(String? token) async {
    _jwtToken = token == null ? null : 'Bearer $token';
  }
}
