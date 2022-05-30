import 'package:alex_astudillo_erp/src/domain/entities/country.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/crud_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/src/country_response.dart';

abstract class CountryRepository
    extends CrudRepository<CountryResponse, Country, int> {
  const CountryRepository();
}
