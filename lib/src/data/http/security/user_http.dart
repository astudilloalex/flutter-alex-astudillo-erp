import 'package:alex_astudillo_erp/src/data/http/base_http_client.dart';
import 'package:alex_astudillo_erp/src/data/http/url_paths.dart';
import 'package:alex_astudillo_erp/src/domain/entities/security/user.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/src/security/user_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/security/user_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class UserHttp implements UserRepository {
  const UserHttp({this.client = const BaseHttpClient()});

  final BaseHttpClient client;

  @override
  Future<UserResponse> create(User entity) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> delete(User entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> read({final int page = 1, final int size = 10}) async {
    final http.Response response = await client.get(
      '${UrlPaths.users}${UrlPaths.read}',
      {'page': '$page', 'size': '$size'},
    );
    return compute(userResponseFromJson, response.body);
  }

  @override
  Future<UserResponse> update(User entity) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
