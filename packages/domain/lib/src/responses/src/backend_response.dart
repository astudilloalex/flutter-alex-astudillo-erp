import 'dart:convert';
import 'dart:typed_data';

import 'package:domain/src/entities/entities.dart';
import 'package:domain/src/responses/src/default_response.dart';

/// Return a [BackendResponse] from [response] data, use this method to work
/// with compute function.
BackendResponse<T> backendResponseFromJson<T>(final Uint8List data) {
  return BackendResponse<T>.fromJson(
    json.decode(
      const Utf8Decoder().convert(data),
    ) as Map<String, dynamic>,
  );
}

/// Default response from Backend with [T] class.
class BackendResponse<T> {
  /// Define a [BackendResponse] class.
  const BackendResponse({
    this.data = const [],
    required this.defaultResponse,
    this.token,
  });

  /// List of [T].
  final List<T> data;

  /// Response with information.
  final DefaultResponse defaultResponse;

  /// Only when sign in on the app contains the JWT token.
  final String? token;

  /// Return a [BackendResponse] from [json] Map and [create] class.
  factory BackendResponse.fromJson(final Map<String, dynamic> json) {
    final List<dynamic> data =
        json['data'] == null ? [] : json['data'] as List<dynamic>;
    return BackendResponse(
      data: data.contains(null)
          ? []
          : List<T>.from(
              data.map(
                (json) => _checkType<T>(json as Map<String, dynamic>),
              ),
            ),
      defaultResponse: DefaultResponse.fromJson(json),
      token: json['token'] as String?,
    );
  }
}

T _checkType<T>(final Map<String, dynamic> json) {
  switch (T) {
    case City:
      return City.fromJson(json) as T;
    case Address:
      return Address.fromJson(json) as T;
    case Company:
      return Company.fromJson(json) as T;
    case Establishment:
      return Establishment.fromJson(json) as T;
    case Person:
      return Person.fromJson(json) as T;
    case Phone:
      return Phone.fromJson(json) as T;
    case Country:
      return Country.fromJson(json) as T;
    case Gender:
      return Gender.fromJson(json) as T;
    case Department:
      return Department.fromJson(json) as T;
    case Job:
      return Job.fromJson(json) as T;
    case PersonDocumentType:
      return PersonDocumentType.fromJson(json) as T;
    case Privilege:
      return Privilege.fromJson(json) as T;
    case Role:
      return Role.fromJson(json) as T;
    default:
      return User.fromJson(json) as T;
  }
}
