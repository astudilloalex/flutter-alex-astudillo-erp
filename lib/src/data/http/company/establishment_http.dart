import 'package:alex_astudillo_erp/src/data/http/base_http_client.dart';
import 'package:alex_astudillo_erp/src/data/http/url_paths.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/src/company/establishment_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/company/establishment_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class EstablishmentHttp implements EstablishmentRepository {
  const EstablishmentHttp({this.client = const BaseHttpClient()});

  final BaseHttpClient client;

  @override
  Future<EstablishmentResponse> companyEstablishments(int companyId) async {
    final http.Response response = await client.get(
      UrlPaths.establishments + UrlPaths.read,
      {'companyId': '$companyId'},
    );
    return compute(establishmentResponseFromJson, response.body);
  }
}
