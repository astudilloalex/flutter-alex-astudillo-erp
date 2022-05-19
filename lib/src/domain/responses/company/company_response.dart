import 'dart:convert';

import 'package:alex_astudillo_erp/src/domain/entities/company/company.dart';
import 'package:alex_astudillo_erp/src/domain/responses/default_response.dart';

CompanyResponse companyResponseFromJson(String str) {
  return CompanyResponse.fromJson(
    json.decode(
      const Utf8Decoder().convert(str.codeUnits),
    ) as Map<String, dynamic>,
  );
}

class CompanyResponse {
  const CompanyResponse({
    this.companies = const [],
    required this.defaultResponse,
  });

  final List<Company> companies;
  final DefaultResponse defaultResponse;

  factory CompanyResponse.fromJson(final Map<String, dynamic> json) {
    final List<dynamic> data = json['data'] == null
        ? []
        : json['data'] is Map<String, dynamic>
            ? [json['data']]
            : [...json['data']];
    return CompanyResponse(
      companies: List<Company>.from(
        data.map((value) => Company.fromJson(value as Map<String, dynamic>)),
      ),
      defaultResponse: DefaultResponse.fromJson(json),
    );
  }
}
