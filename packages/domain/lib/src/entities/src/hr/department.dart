import 'dart:convert';

String departmentToJson(final Department data) => json.encode(data.toJson());

class Department {
  const Department({
    this.id,
  });

  final int? id;

  factory Department.fromJson(final Map<String, dynamic> json) {
    return const Department();
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
