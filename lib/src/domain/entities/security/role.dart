class Role {
  const Role({
    this.id,
    required this.name,
    this.active = true,
    this.creationDate,
    this.updateDate,
    this.privileges = const [],
  });

  final int? id;
  final String name;
  final bool active;
  final DateTime? creationDate;
  final DateTime? updateDate;
  final List<String> privileges;

  Role copyWith({
    final int? id,
    final String? name,
    final bool? active,
    final DateTime? creationDate,
    final DateTime? updateDate,
    final List<String>? privileges,
  }) {
    return Role(
      id: id ?? this.id,
      name: name ?? this.name,
      active: active ?? this.active,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
      privileges: privileges ?? this.privileges,
    );
  }

  factory Role.fromJson(Map<String, dynamic> json) {
    return Role(
      id: json['id'] as int,
      name: json['name'] as String,
      active: json['active'] as bool,
      creationDate: DateTime.tryParse(json['creationDate'].toString()),
      updateDate: DateTime.tryParse(json['updateDate'].toString()),
      privileges: json['privileges'] == null
          ? []
          : List<String>.from(
              (json['privileges'] as List<dynamic>).map((data) => data),
            ),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'active': active,
        'privileges': List<dynamic>.from(privileges.map((x) => x)),
      };
}
