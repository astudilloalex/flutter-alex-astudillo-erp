class Address {
  const Address({
    this.id,
    this.postalCode,
    this.streetNumber,
    required this.mainStreet,
    this.secondaryStreet,
    this.person,
    required this.city,
    this.active = true,
    this.creationDate,
    this.updateDate,
  });

  final int? id;
  final String? postalCode;
  final String? streetNumber;
  final String mainStreet;
  final String? secondaryStreet;
  final int? person;
  final int city;
  final bool active;
  final DateTime? creationDate;
  final DateTime? updateDate;

  Address copyWith({
    final int? id,
    final String? postalCode,
    final String? streetNumber,
    final String? mainStreet,
    final String? secondaryStreet,
    final int? person,
    final int? city,
    final bool? active,
    final DateTime? creationDate,
    final DateTime? updateDate,
  }) {
    return Address(
      id: id ?? this.id,
      postalCode: postalCode ?? this.postalCode,
      streetNumber: streetNumber ?? this.streetNumber,
      mainStreet: mainStreet ?? this.mainStreet,
      secondaryStreet: secondaryStreet ?? this.secondaryStreet,
      person: person ?? this.person,
      city: city ?? this.city,
      active: active ?? this.active,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json['id'] as int,
      postalCode: json['postalCode'] as String?,
      streetNumber: json['streetNumber'] as String?,
      mainStreet: json['mainStreet'] as String,
      secondaryStreet: json['secondaryStreet'] as String?,
      person: json['person'] as int?,
      city: json['city'] as int,
      active: json['active'] as bool,
      creationDate: DateTime.parse(json['creationDate'].toString()),
      updateDate: DateTime.parse(json['updateDate'].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'postalCode': postalCode,
      'streetNumber': streetNumber,
      'mainStreet': mainStreet,
      'secondaryStreet': secondaryStreet,
      'person': person,
      'city': city,
      'active': active,
    };
  }
}
