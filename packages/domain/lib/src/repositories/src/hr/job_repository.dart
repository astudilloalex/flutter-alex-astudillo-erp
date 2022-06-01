import 'package:domain/src/entities/entities.dart';
import 'package:domain/src/repositories/src/crud_repository.dart';

abstract class JobRepository extends CrudRepository<Job, int> {
  const JobRepository();
}
