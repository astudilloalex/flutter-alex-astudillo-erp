import 'dart:convert';

import 'package:domain/src/entities/src/company/address.dart';
import 'package:domain/src/entities/src/company/company.dart';
import 'package:domain/src/entities/src/company/phone.dart';

String establishmentToJson(final Establishment data) {
  return json.encode(data.toJson());
}

class Establishment {
  const Establishment({
    this.id,
    required this.code,
    required this.name,
    required this.company,
    required this.address,
    this.phone,
    this.active = true,
    this.creationDate,
    this.updateDate,
  });

  final int? id;
  final String code;
  final String name;
  final Company company;
  final Address address;
  final Phone? phone;
  final bool active;
  final DateTime? creationDate;
  final DateTime? updateDate;

  Establishment copyWith({
    final int? id,
    final String? code,
    final String? name,
    final Company? company,
    final Address? address,
    final Phone? phone,
    final bool? active,
    final DateTime? creationDate,
    final DateTime? updateDate,
  }) {
    return Establishment(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      company: company ?? this.company,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      active: active ?? this.active,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  factory Establishment.fromJson(Map<String, dynamic> json) {
    return Establishment(
      id: json["id"] as int,
      code: json["code"] as String,
      name: json["name"] as String,
      company: Company.fromJson(json["company"] as Map<String, dynamic>),
      address: Address.fromJson(json["address"] as Map<String, dynamic>),
      phone: json["phone"] == null
          ? null
          : Phone.fromJson(json['phone'] as Map<String, dynamic>),
      active: json["active"] as bool,
      creationDate: DateTime.tryParse(json["creationDate"].toString()),
      updateDate: DateTime.tryParse(json["updateDate"].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "code": code,
      "name": name,
      "company": company.toJson(),
      "address": address.toJson(),
      "phone": phone?.toJson(),
      "active": active,
    };
  }
}
