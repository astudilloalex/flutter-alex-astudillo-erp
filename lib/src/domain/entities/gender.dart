class Gender {
  const Gender({
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

  Gender copyWith({
    final int? id,
    final String? name,
    final bool? active,
  }) {
    return Gender(
      id: id ?? this.id,
      name: name ?? this.name,
      active: active ?? this.active,
      creationDate: creationDate,
      updateDate: updateDate,
    );
  }

  factory Gender.fromJson(final Map<String, dynamic> json) {
    return Gender(
      id: json['id'] as int,
      name: json['name'] as String,
      active: json['active'] as bool,
      creationDate: DateTime.tryParse(json["creationDate"].toString()),
      updateDate: DateTime.tryParse(json["updateDate"].toString()),
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
