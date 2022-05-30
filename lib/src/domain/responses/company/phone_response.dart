import 'dart:convert';

import 'package:alex_astudillo_erp/src/domain/entities/company/phone.dart';
import 'package:alex_astudillo_erp/src/domain/responses/default_response.dart';

PhoneResponse phoneResponseFromJson(final String str) {
  return PhoneResponse.fromJson(
    json.decode(
      const Utf8Decoder().convert(str.codeUnits),
    ) as Map<String, dynamic>,
  );
}

class PhoneResponse {
  const PhoneResponse({
    this.phones = const [],
    required this.defaultResponse,
  });

  final List<Phone> phones;
  final DefaultResponse defaultResponse;

  factory PhoneResponse.fromJson(Map<String, dynamic> json) {
    final List<dynamic> data =
        json['data'] == null ? [] : json['data'] as List<dynamic>;
    return PhoneResponse(
      phones: data.isEmpty || data.contains(null)
          ? []
          : List<Phone>.from(
              data.map((json) => Phone.fromJson(json as Map<String, dynamic>)),
            ),
      defaultResponse: DefaultResponse.fromJson(json),
    );
  }
}
