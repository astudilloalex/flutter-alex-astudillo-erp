import 'package:alex_astudillo_erp/src/domain/responses/company/establishment_response.dart';

abstract class EstablishmentRepository {
  const EstablishmentRepository();

  Future<EstablishmentResponse> companyEstablishments(final int companyId);
}
