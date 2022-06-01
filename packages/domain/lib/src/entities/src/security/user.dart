import 'dart:convert';

import 'package:domain/src/entities/src/company/person.dart';
import 'package:domain/src/entities/src/security/role.dart';

String userToJson(final User data) => json.encode(data.toJson());

class User {
  const User({
    this.id,
    required this.username,
    this.accountNonLocked = true,
    this.accountNonExpired = true,
    this.credentialsNonExpired = true,
    this.enabled = true,
    required this.person,
    this.creationDate,
    this.updateDate,
    required this.roles,
  });

  final int? id;
  final String username;
  final bool accountNonLocked;
  final bool accountNonExpired;
  final bool credentialsNonExpired;
  final bool enabled;
  final Person person;
  final DateTime? creationDate;
  final DateTime? updateDate;
  final List<Role> roles;

  User copyWith({
    final int? id,
    final String? username,
    final bool? accountNonLocked,
    final bool? accountNonExpired,
    final bool? credentialsNonExpired,
    final bool? enabled,
    final Person? person,
    final DateTime? creationDate,
    final DateTime? updateDate,
    final List<Role>? roles,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      accountNonLocked: accountNonLocked ?? this.accountNonLocked,
      accountNonExpired: accountNonExpired ?? this.accountNonExpired,
      credentialsNonExpired:
          credentialsNonExpired ?? this.credentialsNonExpired,
      enabled: enabled ?? this.enabled,
      person: person ?? this.person,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
      roles: roles ?? this.roles,
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as int,
        username: json['username'] as String,
        accountNonLocked: json['accountNonLocked'] as bool,
        accountNonExpired: json['accountNonExpired'] as bool,
        credentialsNonExpired: json['credentialsNonExpired'] as bool,
        enabled: json['enabled'] as bool,
        person: Person.fromJson(json['person'] as Map<String, dynamic>),
        creationDate: DateTime.tryParse(json['creationDate'].toString()),
        updateDate: DateTime.tryParse(json['updateDate'].toString()),
        roles: List<Role>.from(
          (json['roles'] as List<dynamic>).map(
            (data) => Role.fromJson(data as Map<String, dynamic>),
          ),
        ),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'accountNonLocked': accountNonLocked,
        'accountNonExpired': accountNonExpired,
        'credentialsNonExpired': credentialsNonExpired,
        'enabled': enabled,
        'person': person.toJson(),
        'roles': List<dynamic>.from(roles.map((x) => x.toJson())),
      };
}
