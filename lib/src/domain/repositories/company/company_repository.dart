import 'package:alex_astudillo_erp/src/domain/responses/company/company_response.dart';

abstract class CompanyRepository {
  const CompanyRepository();

  Future<CompanyResponse> company(final int id);
  Future<CompanyResponse> myCompanies();
}
