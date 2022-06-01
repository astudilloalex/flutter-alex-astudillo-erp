import 'package:domain/src/entities/entities.dart';
import 'package:domain/src/repositories/src/crud_repository.dart';

abstract class GenderRepository extends CrudRepository<Gender, int> {
  const GenderRepository();
}
