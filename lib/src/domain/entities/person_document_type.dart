class PersonDocumentType {
  const PersonDocumentType({
    this.id,
    required this.name,
    this.active = true,
    this.creationDate,
    this.updateDate,
  });

  final int? id;
  final String name;
  final bool active;
  final DateTime? creationDate;
  final DateTime? updateDate;

  PersonDocumentType copyWith({
    final int? id,
    final String? name,
    final bool? active,
    final DateTime? creationDate,
    final DateTime? updateDate,
  }) {
    return PersonDocumentType(
      id: id ?? this.id,
      name: name ?? this.name,
      active: active ?? this.active,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  factory PersonDocumentType.fromJson(final Map<String, dynamic> json) {
    return PersonDocumentType(
      id: json['id'] as int,
      name: json['name'] as String,
      active: json['active'] as bool,
      creationDate: DateTime.tryParse(json['creationDate'].toString()),
      updateDate: DateTime.tryParse(json['updateDate'].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'active': active,
    };
  }
}
