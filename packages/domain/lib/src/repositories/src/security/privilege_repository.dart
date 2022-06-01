import 'package:domain/src/entities/entities.dart';
import 'package:domain/src/repositories/src/crud_repository.dart';

abstract class PrivilegeRepository extends CrudRepository<Privilege, int> {
  const PrivilegeRepository();
}
