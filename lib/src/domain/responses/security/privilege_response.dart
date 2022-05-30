import 'dart:convert';

import 'package:alex_astudillo_erp/src/domain/entities/security/privilege.dart';
import 'package:alex_astudillo_erp/src/domain/responses/default_response.dart';

PrivilegeResponse privilegeResponseFromJson(final String str) {
  return PrivilegeResponse.fromJson(json.decode(str) as Map<String, dynamic>);
}

class PrivilegeResponse {
  PrivilegeResponse({
    this.data = const [],
    required this.defaultResponse,
  });

  final List<Privilege> data;
  final DefaultResponse defaultResponse;

  factory PrivilegeResponse.fromJson(final Map<String, dynamic> json) {
    final List<dynamic> data =
        json['data'] == null ? [] : json['data'] as List<dynamic>;
    return PrivilegeResponse(
      data: data.contains(null)
          ? []
          : List<Privilege>.from(
              data.map(
                (json) => Privilege.fromJson(json as Map<String, dynamic>),
              ),
            ),
      defaultResponse: DefaultResponse.fromJson(json),
    );
  }
}
