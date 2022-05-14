import 'dart:convert';

import 'package:alex_astudillo_erp/src/domain/responses/response.dart';

SignInResponse signInResponseFromJson(String str) {
  return SignInResponse.fromJson(json.decode(str) as Map<String, dynamic>);
}

class SignInResponse {
  const SignInResponse({
    required this.response,
    this.token,
  });

  final Response response;
  final String? token;

  factory SignInResponse.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic>? data =
        json['data'] == null ? null : json['data'] as Map<String, dynamic>;
    return SignInResponse(
      token: data == null ? null : data['token'] as String?,
      response: Response.fromJson(json),
    );
  }
}
