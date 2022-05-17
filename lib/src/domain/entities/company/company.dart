import 'package:alex_astudillo_erp/src/domain/entities/company/person.dart';

class Company {
  const Company({
    this.id,
    required this.tradename,
    this.specialTaxpayerCode,
    this.active = true,
    this.specialTaxpayer = false,
    this.keepAccounts = true,
    required this.person,
    this.creationDate,
    this.updateDate,
  });

  final int? id;
  final String tradename;
  final String? specialTaxpayerCode;
  final bool active;
  final bool specialTaxpayer;
  final bool keepAccounts;
  final Person person;
  final DateTime? creationDate;
  final DateTime? updateDate;

  Company copyWith({
    final int? id,
    final String? tradename,
    final String? specialTaxpayerCode,
    final bool? active,
    final bool? specialTaxpayer,
    final bool? keepAccounts,
    final Person? person,
    final DateTime? creationDate,
    final DateTime? updateDate,
  }) {
    return Company(
      id: id ?? this.id,
      tradename: tradename ?? this.tradename,
      specialTaxpayerCode: specialTaxpayerCode ?? this.specialTaxpayerCode,
      active: active ?? this.active,
      specialTaxpayer: specialTaxpayer ?? this.specialTaxpayer,
      keepAccounts: keepAccounts ?? this.keepAccounts,
      person: person ?? this.person,
      creationDate: creationDate ?? this.creationDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      id: json['id'] as int,
      tradename: json['tradename'] as String,
      specialTaxpayerCode: json['specialTaxpayerCode'] as String?,
      active: json['active'] as bool,
      specialTaxpayer: json['specialTaxpayer'] as bool,
      keepAccounts: json['keepAccounts'] as bool,
      person: Person.fromJson(json['person'] as Map<String, dynamic>),
      creationDate: DateTime.tryParse(json['creationDate'].toString()),
      updateDate: DateTime.tryParse(json['updateDate'].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tradename': tradename,
      'specialTaxpayerCode': specialTaxpayerCode,
      'active': active,
      'specialTaxpayer': specialTaxpayer,
      'keepAccounts': keepAccounts,
      'person': person.toJson(),
    };
  }
}
