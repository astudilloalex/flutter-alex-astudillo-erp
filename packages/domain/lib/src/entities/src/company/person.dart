import 'dart:convert';

import 'package:domain/src/entities/src/gender.dart';
import 'package:domain/src/entities/src/person_document_type.dart';

String personToJson(final Person data) => json.encode(data.toJson());

class Person {
  const Person({
    this.id,
    required this.idCard,
    this.socialReason,
    this.firstName,
    this.lastName,
    this.birthdate,
    this.juridicalPerson = false,
    this.gender,
    required this.documentType,
    this.email,
    this.active = true,
    this.creationDate,
    this.updateDate,
  });

  final int? id;
  final String idCard;
  final String? socialReason;
  final String? firstName;
  final String? lastName;
  final DateTime? birthdate;
  final bool juridicalPerson;
  final Gender? gender;
  final PersonDocumentType documentType;
  final String? email;
  final bool active;
  final DateTime? creationDate;
  final DateTime? updateDate;

  Person copyWith({
    final int? id,
    final String? idCard,
    final String? socialReason,
    final String? firstName,
    final String? lastName,
    final DateTime? birthdate,
    final bool? juridicalPerson,
    final Gender? gender,
    final PersonDocumentType? documentType,
    final String? email,
    final bool? active,
    final DateTime? creationDate,
    final DateTime? updateDate,
  }) {
    return Person(
      id: id ?? this.id,
      idCard: idCard ?? this.idCard,
      socialReason: socialReason ?? this.socialReason,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      birthdate: birthdate ?? this.birthdate,
      juridicalPerson: juridicalPerson ?? this.juridicalPerson,
      gender: gender ?? this.gender,
      documentType: documentType ?? this.documentType,
      email: email ?? this.email,
      active: active ?? this.active,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  factory Person.fromJson(final Map<String, dynamic> json) {
    return Person(
      id: json['id'] as int,
      idCard: json['idCard'] as String,
      socialReason: json['socialReason'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      birthdate: DateTime.tryParse(json['birthdate'].toString()),
      juridicalPerson: json['juridicalPerson'] as bool,
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
      documentType: PersonDocumentType.fromJson(
        json['documentType'] as Map<String, dynamic>,
      ),
      email: json['email'] as String?,
      active: json['active'] as bool,
      creationDate: DateTime.tryParse(json['creationDate'].toString()),
      updateDate: DateTime.tryParse(json['updateDate'].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'idCard': idCard,
      'socialReason': socialReason,
      'firstName': firstName,
      'lastName': lastName,
      'birthdate': birthdate?.toIso8601String(),
      'juridicalPerson': juridicalPerson,
      'gender': gender?.toJson(),
      'documentType': documentType.toJson(),
      'email': email,
      'active': active,
    };
  }
}
