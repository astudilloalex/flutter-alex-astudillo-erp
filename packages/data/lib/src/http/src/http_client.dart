import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:data/src/enums/enums.dart';
import 'package:data/src/local/local.dart';
import 'package:domain/domain.dart';
import 'package:http/http.dart' as http;

class HttpClient<T> {
  const HttpClient({
    this.apiAuthority = '192.168.18.8:8080',
    this.https = false,
    this.timeout = const Duration(milliseconds: 10),
  });

  final String apiAuthority;
  final bool https;
  final Duration timeout;

  Future<BackendResponse<T>> request(
    final String path,
    final RequestMethod method, {
    final String? body,
    final String? contentType,
    final Map<String, String>? parameters,
  }) async {
    final Uri uri = https
        ? Uri.https(apiAuthority, '/api/v1$path', parameters)
        : Uri.http(apiAuthority, '/api/v1$path', parameters);
    final String? token = await const SecureStorageLocal().jwtToken;
    final Map<String, String> headers = {
      HttpHeaders.authorizationHeader: token ?? '',
      'Content-Type': contentType ?? 'application/json',
    };
    final Encoding? encoding = Encoding.getByName('utf-8');
    try {
      final http.Response response;
      switch (method) {
        case RequestMethod.delete:
          response = await http
              .delete(uri, headers: headers, body: body, encoding: encoding)
              .timeout(timeout);
          break;
        case RequestMethod.get:
          response = await http.get(uri, headers: headers).timeout(timeout);
          break;
        case RequestMethod.head:
          response = await http.head(uri, headers: headers).timeout(timeout);
          break;
        case RequestMethod.post:
          response = await http
              .post(uri, headers: headers, body: body, encoding: encoding)
              .timeout(timeout);
          break;
        case RequestMethod.put:
          response = await http
              .put(uri, headers: headers, body: body, encoding: encoding)
              .timeout(timeout);
          break;
        case RequestMethod.patch:
          response = await http
              .patch(uri, headers: headers, body: body, encoding: encoding)
              .timeout(timeout);
          break;
      }
      return _fromIsolate(response);
    } on SocketException {
      return _fromIsolate(
        http.Response(
          '{"statusCode": 503, "message": "server-or-internet-down"}',
          503,
        ),
      );
    } on TimeoutException {
      return _fromIsolate(
        http.Response(
          '{"statusCode": 408, "message": "request-timeout"}',
          408,
        ),
      );
    } on Exception catch (e) {
      return _fromIsolate(
        http.Response(
          '{"statusCode": 0, "message": "${e.toString()}"}',
          0,
        ),
      );
    }
  }

  Future<BackendResponse<T>> _fromIsolate(final http.Response response) async {
    final ReceivePort port = ReceivePort();
    await Isolate.spawn<List<dynamic>>(
      _deserializeData<T>,
      [port.sendPort, response],
    );
    final BackendResponse<T> data = await port.first as BackendResponse<T>;
    port.close();
    return data;
  }
}

void _deserializeData<T>(List<dynamic> data) {
  final SendPort port = data[0] as SendPort;
  final http.Response response = data[1] as http.Response;
  Isolate.exit(port, backendResponseFromJson<T>(response.bodyBytes));
}
