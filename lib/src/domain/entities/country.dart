class Country {
  const Country({
    this.id,
    required this.code,
    required this.name,
    this.active = true,
    this.creationDate,
    this.updateDate,
  });

  final int? id;
  final String code;
  final String name;
  final bool active;
  final DateTime? creationDate;
  final DateTime? updateDate;

  Country copyWith({
    final int? id,
    final String? code,
    final String? name,
    final bool? active,
  }) {
    return Country(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      active: active ?? this.active,
      creationDate: creationDate,
      updateDate: updateDate,
    );
  }

  factory Country.fromJson(final Map<String, dynamic> json) {
    return Country(
      id: json['id'] as int,
      code: json['code'] as String,
      name: json['name'] as String,
      active: json['active'] as bool,
      creationDate: DateTime.tryParse(json["creationDate"].toString()),
      updateDate: DateTime.tryParse(json["updateDate"].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'name': name,
      'active': active,
    };
  }
}
