import 'dart:convert';

String jobToJson(final Job data) => json.encode(data.toJson());

class Job {
  const Job();

  factory Job.fromJson(final Map<String, dynamic> json) {
    return const Job();
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
