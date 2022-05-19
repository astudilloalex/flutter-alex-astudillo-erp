class DefaultResponse {
  const DefaultResponse({
    required this.message,
    required this.status,
  });

  final String message;
  final int status;

  factory DefaultResponse.fromJson(final Map<String, dynamic> json) {
    return DefaultResponse(
      message: json['message'] as String,
      status: json['status'] as int,
    );
  }
}
