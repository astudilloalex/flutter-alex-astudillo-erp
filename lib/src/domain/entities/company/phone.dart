class Phone {
  const Phone({
    this.id,
    required this.number,
    required this.personId,
    this.active = true,
    this.creationDate,
    this.updateDate,
  });

  final int? id;
  final String number;
  final int personId;
  final bool active;
  final DateTime? creationDate;
  final DateTime? updateDate;

  Phone copyWith({
    final int? id,
    final String? number,
    final int? personId,
    final bool? active,
    final DateTime? creationDate,
    final DateTime? updateDate,
  }) {
    return Phone(
      id: id ?? this.id,
      number: number ?? this.number,
      personId: personId ?? this.personId,
      active: active ?? this.active,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  factory Phone.fromJson(final Map<String, dynamic> json) {
    return Phone(
        id: json['id'] as int,
        number: json['number'] as String,
        personId: json['person'] as int,
        active: json['active'] as bool,
        creationDate: DateTime.tryParse(json['creationDate'].toString()),
        updateDate: DateTime.tryParse(json['updateDate'].toString()));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'number': number,
      'person': personId,
      'active': active,
    };
  }
}
