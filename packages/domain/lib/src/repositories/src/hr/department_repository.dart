import 'package:domain/src/entities/entities.dart';
import 'package:domain/src/repositories/src/crud_repository.dart';

abstract class DepartmentRepository extends CrudRepository<Department, int> {
  const DepartmentRepository();
}
