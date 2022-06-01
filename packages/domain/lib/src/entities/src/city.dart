import 'dart:convert';

String cityToJson(final City data) => json.encode(data.toJson());

class City {
  const City({
    this.id,
    this.code,
    required this.name,
    required this.countryId,
    this.active = true,
    this.creationDate,
    this.updateDate,
  });

  final int? id;
  final String? code;
  final String name;
  final int countryId;
  final bool active;
  final DateTime? creationDate;
  final DateTime? updateDate;

  City copyWith({
    final int? id,
    final String? code,
    final String? name,
    final int? countryId,
    final bool? active,
    final DateTime? creationDate,
    final DateTime? updateDate,
  }) {
    return City(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      countryId: countryId ?? this.countryId,
      active: active ?? this.active,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'] as int,
      code: json['code'] as String?,
      name: json['name'] as String,
      countryId: json['country'] as int,
      active: json['active'] as bool,
      creationDate: DateTime.tryParse(json['creationDate'].toString()),
      updateDate: DateTime.tryParse(json['updateDate'].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'name': name,
      'country': countryId,
      'active': active,
    };
  }
}
