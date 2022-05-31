import 'package:alex_astudillo_erp/src/domain/entities/security/privilege.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/crud_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/security/privilege_response.dart';

abstract class PrivilegeRepository
    extends CrudRepository<PrivilegeResponse, Privilege, int> {
  const PrivilegeRepository();
}
