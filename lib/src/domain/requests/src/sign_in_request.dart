import 'dart:convert';

String signInRequestToJson(final SignInRequest request) {
  return json.encode(request.toJson());
}

class SignInRequest {
  const SignInRequest({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}
