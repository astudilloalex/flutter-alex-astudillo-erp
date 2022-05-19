import 'package:alex_astudillo_erp/src/data/http/base_http_client.dart';
import 'package:alex_astudillo_erp/src/data/http/url_paths.dart';
import 'package:alex_astudillo_erp/src/domain/repositories/sign_in_repository.dart';
import 'package:alex_astudillo_erp/src/domain/requests/src/sign_in_request.dart';
import 'package:alex_astudillo_erp/src/domain/responses/security/sign_in_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class SignInHttp implements SignInRepository {
  const SignInHttp({this.client = const BaseHttpClient()});

  final BaseHttpClient client;

  @override
  Future<SignInResponse> signIn(final SignInRequest request) async {
    final http.Response response = await client.post(
      UrlPaths.signIn,
      request: await compute(signInRequestToJson, request),
    );
    return compute(signInResponseFromJson, response.body);
  }
}
