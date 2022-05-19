import 'dart:convert';

import 'package:alex_astudillo_erp/src/domain/entities/security/user.dart';
import 'package:alex_astudillo_erp/src/domain/responses/default_response.dart';

UserResponse userResponseFromJson(String str) {
  return UserResponse.fromJson(
    json.decode(
      const Utf8Decoder().convert(str.codeUnits),
    ) as Map<String, dynamic>,
  );
}

class UserResponse {
  UserResponse({
    this.users = const [],
    required this.defaultResponse,
  });

  final List<User> users;
  final DefaultResponse defaultResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    final List<dynamic> data = json['data'] == null
        ? []
        : json['data'] is Map<String, dynamic>
            ? [json['data']]
            : [...json['data']];
    return UserResponse(
      users: List<User>.from(
        data.map(
          (value) => User.fromJson(value as Map<String, dynamic>),
        ),
      ),
      defaultResponse: DefaultResponse.fromJson(json),
    );
  }
}
