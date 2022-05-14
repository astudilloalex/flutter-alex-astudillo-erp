class Response {
  const Response({
    required this.message,
    required this.status,
  });

  final String message;
  final int status;

  factory Response.fromJson(final Map<String, dynamic> json) {
    return Response(
      message: json['message'] as String,
      status: json['status'] as int,
    );
  }
}
