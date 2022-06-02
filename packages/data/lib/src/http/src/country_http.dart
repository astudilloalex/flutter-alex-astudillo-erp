import 'package:data/src/http/src/http_client.dart';
import 'package:domain/domain.dart';

class CountryHttp implements CountryRepository {
  const CountryHttp({
    this.client = const HttpClient<Country>(),
  });

  final HttpClient<Country> client;

  @override
  Future<BackendResponse<Country>> delete(Country entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Country>> deleteAll({Iterable<Country>? entities}) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Country>> deleteAllById(Iterable<int> ids) {
    // TODO: implement deleteAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Country>> deleteById(int id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Country>> findAll({int page = 1, int size = 10}) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Country>> findAllById(Iterable<int> ids) {
    // TODO: implement findAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Country>> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Country>> save(Country entity) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Country>> saveAll(Iterable<Country> entities) {
    // TODO: implement saveAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Country>> update(Country entity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Country>> updateAll(Iterable<Country> entities) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }
}
