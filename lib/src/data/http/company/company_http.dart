import 'package:alex_astudillo_erp/src/data/http/base_http_client.dart';
import 'package:alex_astudillo_erp/src/data/http/url_paths.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/company/company_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/company/company_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class CompanyHttp implements CompanyRepository {
  const CompanyHttp({this.client = const BaseHttpClient()});

  final BaseHttpClient client;

  @override
  Future<CompanyResponse> company(final int id) async {
    final http.Response response = await client.get(
      UrlPaths.company,
      {'companyId': '$id'},
    );
    return compute(companyResponseFromJson, response.body);
  }

  @override
  Future<CompanyResponse> myCompanies() async {
    final http.Response response = await client.get(
      UrlPaths.myCompanies,
    );
    return compute(companyResponseFromJson, response.body);
  }
}
