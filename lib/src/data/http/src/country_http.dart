import 'package:alex_astudillo_erp/src/data/http/base_http_client.dart';
import 'package:alex_astudillo_erp/src/data/http/url_paths.dart';
import 'package:alex_astudillo_erp/src/domain/entities/country.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/src/country_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/src/country_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class CountryHttp implements CountryRepository {
  const CountryHttp({this.client = const BaseHttpClient()});
  final BaseHttpClient client;

  @override
  Future<CountryResponse> create(final Country entity) async {
    final http.Response response = await client.postData(
      '${UrlPaths.countries}${UrlPaths.create}',
      request: await compute(countryToJson, entity),
    );
    return compute(countryResponseFromJson, response.body);
  }

  @override
  Future<CountryResponse> delete(final Country entity) async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<CountryResponse> read({
    final int page = 1,
    final int size = 10,
  }) async {
    final http.Response response = await client.getData(
      '${UrlPaths.countries}${UrlPaths.read}',
      {'page': '$page', 'size': '$size'},
    );
    return compute(countryResponseFromJson, response.body);
  }

  @override
  Future<CountryResponse> update(final Country entity) async {
    final http.Response response = await client.putData(
      '${UrlPaths.countries}${UrlPaths.update}',
      request: await compute(countryToJson, entity),
    );
    return compute(countryResponseFromJson, response.body);
  }

  @override
  Future<CountryResponse> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }
}
