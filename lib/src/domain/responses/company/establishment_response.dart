import 'dart:convert';
import 'package:alex_astudillo_erp/src/domain/entities/company/establishment.dart';
import 'package:alex_astudillo_erp/src/domain/responses/default_response.dart';

EstablishmentResponse establishmentResponseFromJson(String str) {
  return EstablishmentResponse.fromJson(
    json.decode(
      const Utf8Decoder().convert(str.codeUnits),
    ) as Map<String, dynamic>,
  );
}

class EstablishmentResponse {
  const EstablishmentResponse({
    this.establishments = const [],
    required this.defaultResponse,
  });

  final List<Establishment> establishments;
  final DefaultResponse defaultResponse;

  factory EstablishmentResponse.fromJson(final Map<String, dynamic> json) {
    final List<dynamic> data = json['data'] == null
        ? []
        : json['data'] is Map<String, dynamic>
            ? [json['data']]
            : [...json['data']];
    return EstablishmentResponse(
      establishments: List<Establishment>.from(
        data.map(
          (value) => Establishment.fromJson(value as Map<String, dynamic>),
        ),
      ),
      defaultResponse: DefaultResponse.fromJson(json),
    );
  }
}
