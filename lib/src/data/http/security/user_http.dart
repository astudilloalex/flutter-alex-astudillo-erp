import 'package:alex_astudillo_erp/src/data/http/base_http_client.dart';
import 'package:alex_astudillo_erp/src/data/http/url_paths.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/security/user_repository.dart';
import 'package:alex_astudillo_erp/src/domain/responses/security/user_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class UserHttp implements UserRepository {
  const UserHttp({this.client = const BaseHttpClient()});

  final BaseHttpClient client;

  @override
  Future<UserResponse> get user async {
    final http.Response response = await client.get(UrlPaths.user);
    return compute(userResponseFromJson, response.body);
  }
}
