import 'package:alex_astudillo_erp/src/data/http/base_http_client.dart';
import 'package:alex_astudillo_erp/src/data/http/url_paths.dart';
import 'package:alex_astudillo_erp/src/domain/entities/company/phone.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/src/company/phone_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/company/phone_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PhoneHttp implements PhoneRepository {
  const PhoneHttp({this.client = const BaseHttpClient()});

  final BaseHttpClient client;

  @override
  Future<PhoneResponse> create(final Phone entity) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<PhoneResponse> delete(final Phone entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<PhoneResponse> findById(final int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<PhoneResponse> findByPersonId(final int id) async {
    final http.Response response = await client.get(
      '${UrlPaths.phones}${UrlPaths.person}/$id',
    );
    return compute(phoneResponseFromJson, response.body);
  }

  @override
  Future<PhoneResponse> read({final int page = 1, final int size = 10}) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<PhoneResponse> update(final Phone entity) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
