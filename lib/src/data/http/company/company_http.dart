import 'package:alex_astudillo_erp/src/data/http/base_http_client.dart';
import 'package:alex_astudillo_erp/src/data/http/url_paths.dart';
import 'package:alex_astudillo_erp/src/domain/entities/company/company.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/src/company/company_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/company/company_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class CompanyHttp implements CompanyRepository {
  const CompanyHttp({this.client = const BaseHttpClient()});

  final BaseHttpClient client;

  @override
  Future<CompanyResponse> create(final Company entity) async {
    final http.Response response = await client.post(
      '${UrlPaths.companies}${UrlPaths.create}',
      request: await compute(companyToJson, entity),
    );
    return compute(companyResponseFromJson, response.body);
  }

  @override
  Future<CompanyResponse> delete(Company entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<CompanyResponse> read({int page = 1, int size = 10}) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<CompanyResponse> update(final Company entity) async {
    final http.Response response = await client.put(
      '${UrlPaths.companies}${UrlPaths.update}',
      request: await compute(companyToJson, entity),
    );
    return compute(companyResponseFromJson, response.body);
  }

  @override
  Future<CompanyResponse> findById(final int id) async {
    final http.Response response = await client.get(
      '${UrlPaths.companies}/$id',
    );
    return compute(companyResponseFromJson, response.body);
  }
}
