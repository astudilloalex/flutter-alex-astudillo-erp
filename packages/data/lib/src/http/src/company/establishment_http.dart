import 'package:data/src/http/src/http_client.dart';
import 'package:domain/domain.dart';

class EstablishmentHttp implements EstablishmentRepository {
  const EstablishmentHttp({
    this.client = const HttpClient<Establishment>(),
  });

  final HttpClient<Establishment> client;

  @override
  Future<BackendResponse<Establishment>> delete(Establishment entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Establishment>> deleteAll({
    final Iterable<Establishment>? entities,
  }) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Establishment>> deleteAllById(Iterable<int> ids) {
    // TODO: implement deleteAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Establishment>> deleteById(int id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Establishment>> findAll({
    int page = 1,
    int size = 10,
  }) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Establishment>> findAllById(Iterable<int> ids) {
    // TODO: implement findAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Establishment>> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Establishment>> save(Establishment entity) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Establishment>> saveAll(
    Iterable<Establishment> entities,
  ) {
    // TODO: implement saveAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Establishment>> update(Establishment entity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Establishment>> updateAll(
    Iterable<Establishment> entities,
  ) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }
}
