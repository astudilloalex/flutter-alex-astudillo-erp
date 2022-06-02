import 'dart:convert';

import 'package:data/src/enums/enums.dart';
import 'package:data/src/http/src/http_client.dart';
import 'package:data/src/http/src/paths.dart';
import 'package:domain/domain.dart';

class UserHttp implements UserRepository {
  const UserHttp({
    this.client = const HttpClient<User>(),
  });

  final HttpClient<User> client;

  @override
  Future<BackendResponse<User>> authenticate(
    final String username,
    final String password,
  ) {
    return client.request(
      Paths.signIn,
      RequestMethod.post,
      body: json.encode({
        'username': username,
        'password': password,
      }),
    );
  }

  @override
  Future<BackendResponse<User>> delete(final User entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<User>> deleteAll({Iterable<User>? entities}) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<User>> deleteAllById(Iterable<int> ids) {
    // TODO: implement deleteAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<User>> deleteById(int id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<User>> findAll({int page = 1, int size = 10}) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<User>> findAllById(Iterable<int> ids) {
    // TODO: implement findAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<User>> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<User>> findByUsername(String username) {
    // TODO: implement findByUsername
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<User>> save(User entity) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<User>> saveAll(Iterable<User> entities) {
    // TODO: implement saveAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<User>> update(User entity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<User>> updateAll(Iterable<User> entities) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }
}
