import 'package:domain/domain.dart';

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
