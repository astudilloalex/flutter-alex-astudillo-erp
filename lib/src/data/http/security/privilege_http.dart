import 'package:alex_astudillo_erp/src/data/http/base_http_client.dart';
import 'package:alex_astudillo_erp/src/data/http/url_paths.dart';
import 'package:alex_astudillo_erp/src/domain/entities/security/privilege.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/src/security/privilege_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/security/privilege_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PrivilegeHttp extends BaseHttpClient implements PrivilegeRepository {
  const PrivilegeHttp();

  @override
  Future<PrivilegeResponse> create(final Privilege entity) async {
    final http.Response response = await postData(
      '${UrlPaths.privileges}${UrlPaths.create}',
      request: await compute(privilegeToJson, entity),
    );
    return compute(privilegeResponseFromJson, response.body);
  }

  @override
  Future<PrivilegeResponse> delete(final Privilege entity) async {
    final http.Response response = await deleteData(
      '${UrlPaths.privileges}${UrlPaths.delete}',
      parameters: {'id': '${entity.id}'},
    );
    return compute(privilegeResponseFromJson, response.body);
  }

  @override
  Future<PrivilegeResponse> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<PrivilegeResponse> read({
    final int page = 1,
    final int size = 25,
  }) async {
    final http.Response response = await getData(
      '${UrlPaths.privileges}${UrlPaths.read}',
      {'page': '$page', 'size': '$size'},
    );
    return compute(privilegeResponseFromJson, response.body);
  }

  @override
  Future<PrivilegeResponse> update(final Privilege entity) async {
    final http.Response response = await putData(
      '${UrlPaths.privileges}${UrlPaths.update}',
      request: await compute(privilegeToJson, entity),
    );
    return compute(privilegeResponseFromJson, response.body);
  }
}
