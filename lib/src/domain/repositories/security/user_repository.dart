import 'package:alex_astudillo_erp/src/domain/responses/security/user_response.dart';

abstract class UserRepository {
  const UserRepository();

  Future<UserResponse> get user;
}
