import 'dart:convert';

import 'package:alex_astudillo_erp/src/domain/entities/security/user.dart';
import 'package:alex_astudillo_erp/src/domain/responses/default_response.dart';

SignInResponse signInResponseFromJson(String str) {
  return SignInResponse.fromJson(json.decode(str) as Map<String, dynamic>);
}

class SignInResponse {
  const SignInResponse({
    required this.defaultResponse,
    this.token,
    this.user,
  });

  final DefaultResponse defaultResponse;
  final String? token;
  final User? user;

  factory SignInResponse.fromJson(Map<String, dynamic> json) {
    return SignInResponse(
      token: json['token'] as String?,
      user: json['data'] == null
          ? null
          : User.fromJson(json['data'] as Map<String, dynamic>),
      defaultResponse: DefaultResponse.fromJson(json),
    );
  }
}
