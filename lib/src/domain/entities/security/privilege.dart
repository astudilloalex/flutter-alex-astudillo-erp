import 'dart:convert';

String privilegeToJson(final Privilege data) {
  return json.encode(data.toJson());
}

class Privilege {
  const Privilege({
    this.id,
    required this.name,
    this.creationDate,
    this.updateDate,
  });

  final int? id;
  final String name;
  final DateTime? creationDate;
  final DateTime? updateDate;

  Privilege copyWith({
    final int? id,
    final String? name,
    final DateTime? creationDate,
    final DateTime? updateDate,
  }) {
    return Privilege(
      id: id ?? this.id,
      name: name ?? this.name,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  factory Privilege.fromJson(Map<String, dynamic> json) {
    return Privilege(
      id: json['id'] as int?,
      name: json['name'] as String,
      creationDate: DateTime.parse(json['creationDate'].toString()),
      updateDate: DateTime.parse(json['updateDate'].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
