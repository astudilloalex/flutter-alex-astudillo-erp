import 'package:alex_astudillo_erp/src/domain/entities/company/company.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/crud_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/company/company_response.dart';

abstract class CompanyRepository
    extends CrudRepository<CompanyResponse, Company, int> {
  const CompanyRepository();
}
