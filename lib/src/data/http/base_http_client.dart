import 'dart:async';
import 'dart:io';

import 'package:alex_astudillo_erp/src/core/exceptions/http_exceptions.dart';
import 'package:alex_astudillo_erp/src/data/http/url_paths.dart';
import 'package:alex_astudillo_erp/src/data/local/secure_storage_local.dart';
import 'package:http/http.dart' as http;

class BaseHttpClient {
  const BaseHttpClient({
    this.apiAuthority = '192.168.18.8:8080',
    this.apiPath = '/api/v1',
    this.https = false,
    this.secureStorageLocal = const SecureStorageLocal(),
    this.timeout = const Duration(seconds: 10),
  });
  final String apiAuthority;
  final String apiPath;
  final bool https;
  final SecureStorageLocal secureStorageLocal;
  final Duration timeout;

  Future<http.Response> get(
    final String path, [
    final Map<String, dynamic>? parameters,
  ]) async {
    final Uri uri = https
        ? Uri.https(apiAuthority, '$apiPath$path', parameters)
        : Uri.http(apiAuthority, '$apiPath$path', parameters);
    try {
      final String? token = await secureStorageLocal.jwtToken;
      final http.Response response = await http.get(
        uri,
        headers: {HttpHeaders.authorizationHeader: token ?? ''},
      ).timeout(timeout);
      if (response.statusCode == 200) {
        return Future.value(response);
      }
      final String? reason = response.reasonPhrase;
      throw _processResponse(
        response.statusCode,
        response.request?.url.toString() ?? uri.toString(),
        reason == null || reason.isEmpty ? null : reason,
      );
    } on SocketException {
      throw FetchDataException('No internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException('Timeout', uri.toString());
    }
  }

  Future<http.Response> post(
    String path, {
    String? request,
    Map<String, String>? parameters,
  }) async {
    final Uri uri = https
        ? Uri.https(apiAuthority, '$apiPath$path', parameters)
        : Uri.http(apiAuthority, '$apiPath$path', parameters);
    try {
      final String? token = await secureStorageLocal.jwtToken;
      final http.Response response = await http
          .post(
            uri,
            headers: path == UrlPaths.signIn
                ? null
                : {
                    HttpHeaders.authorizationHeader: token ?? '',
                    'Content-Type': 'application/json',
                  },
            body: request,
          )
          .timeout(timeout);
      if (response.statusCode == 200) {
        return Future.value(response);
      }
      final String? reason = response.reasonPhrase;
      throw _processResponse(
        response.statusCode,
        response.request?.url.toString() ?? uri.toString(),
        reason == null || reason.isEmpty ? null : reason,
      );
    } on SocketException {
      throw FetchDataException('No internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException('Timeout', uri.toString());
    }
  }

  Exception _processResponse(int statusCode, String url, [String? message]) {
    switch (statusCode) {
      case 400:
        return BadRequestException(
          message ?? 'Check request sent to server',
          url,
        );
      case 401:
        return UnauthorizedException(
          message ?? 'Your credentials are incorrect',
          url,
        );
      case 403:
        return UnauthorizedException(
          message ?? 'You do not have authorization',
          url,
        );
      default:
        return FetchDataException(
          message ?? 'Error ocurred with code: $statusCode',
          url,
        );
    }
  }
}
