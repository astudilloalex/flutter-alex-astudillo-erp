import 'package:data/src/http/src/http_client.dart';
import 'package:domain/domain.dart';

class PrivilegeHttp implements PrivilegeRepository {
  const PrivilegeHttp({
    this.client = const HttpClient<Privilege>(),
  });

  final HttpClient<Privilege> client;

  @override
  Future<BackendResponse<Privilege>> delete(final Privilege entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Privilege>> deleteAll({
    final Iterable<Privilege>? entities,
  }) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Privilege>> deleteAllById(Iterable<int> ids) {
    // TODO: implement deleteAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Privilege>> deleteById(int id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Privilege>> findAll({int page = 1, int size = 10}) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Privilege>> findAllById(Iterable<int> ids) {
    // TODO: implement findAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Privilege>> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Privilege>> save(Privilege entity) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Privilege>> saveAll(Iterable<Privilege> entities) {
    // TODO: implement saveAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Privilege>> update(Privilege entity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Privilege>> updateAll(Iterable<Privilege> entities) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }
}
