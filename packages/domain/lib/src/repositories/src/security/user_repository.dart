import 'package:domain/src/entities/entities.dart';
import 'package:domain/src/repositories/src/crud_repository.dart';
import 'package:domain/src/responses/responses.dart';

abstract class UserRepository extends CrudRepository<User, int> {
  const UserRepository();

  Future<BackendResponse<User>> signIn(
    final String username,
    final String password,
  );
}
