import 'package:domain/src/entities/entities.dart';
import 'package:domain/src/repositories/src/crud_repository.dart';

abstract class EstablishmentRepository
    extends CrudRepository<Establishment, int> {
  const EstablishmentRepository();
}
