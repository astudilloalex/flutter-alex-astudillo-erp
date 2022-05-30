import 'package:alex_astudillo_erp/src/domain/entities/company/phone.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/crud_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/company/phone_response.dart';

abstract class PhoneRepository
    extends CrudRepository<PhoneResponse, Phone, int> {
  const PhoneRepository();

  Future<PhoneResponse> findByPersonId(final int id);
}
