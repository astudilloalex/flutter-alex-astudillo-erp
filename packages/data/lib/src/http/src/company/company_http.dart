import 'package:data/src/http/src/http_client.dart';
import 'package:domain/domain.dart';

class CompanyHttp implements CompanyRepository {
  const CompanyHttp({
    this.client = const HttpClient<Company>(),
  });

  final HttpClient<Company> client;

  @override
  Future<BackendResponse<Company>> delete(Company entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Company>> deleteAll({Iterable<Company>? entities}) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Company>> deleteAllById(Iterable<int> ids) {
    // TODO: implement deleteAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Company>> deleteById(int id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Company>> findAll({int page = 1, int size = 10}) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Company>> findAllById(Iterable<int> ids) {
    // TODO: implement findAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Company>> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Company>> save(Company entity) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Company>> saveAll(Iterable<Company> entities) {
    // TODO: implement saveAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Company>> update(Company entity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Company>> updateAll(Iterable<Company> entities) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }
}
