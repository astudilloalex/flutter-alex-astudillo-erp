import 'package:data/src/http/src/http_client.dart';
import 'package:domain/domain.dart';

class CityHttp implements CityRepository {
  const CityHttp({
    this.client = const HttpClient<City>(),
  });

  final HttpClient<City> client;

  @override
  Future<BackendResponse<City>> delete(final City entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<City>> deleteAll({Iterable<City>? entities}) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<City>> deleteAllById(Iterable<int> ids) {
    // TODO: implement deleteAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<City>> deleteById(int id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<City>> findAll({int page = 1, int size = 10}) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<City>> findAllById(Iterable<int> ids) {
    // TODO: implement findAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<City>> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<City>> save(City entity) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<City>> saveAll(Iterable<City> entities) {
    // TODO: implement saveAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<City>> update(City entity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<City>> updateAll(Iterable<City> entities) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }
}
