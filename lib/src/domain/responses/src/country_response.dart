import 'dart:convert';

import 'package:alex_astudillo_erp/src/domain/entities/country.dart';
import 'package:alex_astudillo_erp/src/domain/responses/default_response.dart';

CountryResponse countryResponseFromJson(String str) {
  return CountryResponse.fromJson(
    json.decode(
      const Utf8Decoder().convert(str.codeUnits),
    ) as Map<String, dynamic>,
  );
}

class CountryResponse {
  CountryResponse({
    this.countries = const [],
    required this.defaultResponse,
  });

  final List<Country> countries;
  final DefaultResponse defaultResponse;

  factory CountryResponse.fromJson(final Map<String, dynamic> json) {
    final List<dynamic>? data = json['data'] as List<dynamic>?;
    return CountryResponse(
      countries: data == null || data.isEmpty
          ? []
          : List<Country>.from(
              data.map(
                (json) => Country.fromJson(json as Map<String, dynamic>),
              ),
            ),
      defaultResponse: DefaultResponse.fromJson(json),
    );
  }
}
