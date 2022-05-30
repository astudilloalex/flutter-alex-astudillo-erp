import 'package:alex_astudillo_erp/src/domain/entities/security/user.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/crud_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/security/user_response.dart';

abstract class UserRepository extends CrudRepository<UserResponse, User, int> {
  const UserRepository();
}
