import 'package:data/src/http/src/http_client.dart';
import 'package:domain/domain.dart';

class GenderHttp implements GenderRepository {
  const GenderHttp({
    this.client = const HttpClient<Gender>(),
  });

  final HttpClient<Gender> client;

  @override
  Future<BackendResponse<Gender>> delete(Gender entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Gender>> deleteAll({Iterable<Gender>? entities}) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Gender>> deleteAllById(Iterable<int> ids) {
    // TODO: implement deleteAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Gender>> deleteById(int id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Gender>> findAll({int page = 1, int size = 10}) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Gender>> findAllById(Iterable<int> ids) {
    // TODO: implement findAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Gender>> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Gender>> save(Gender entity) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Gender>> saveAll(Iterable<Gender> entities) {
    // TODO: implement saveAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Gender>> update(Gender entity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Gender>> updateAll(Iterable<Gender> entities) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }
}
