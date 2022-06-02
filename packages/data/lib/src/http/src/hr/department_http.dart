import 'package:data/src/http/src/http_client.dart';
import 'package:domain/domain.dart';

class DepartmentHttp implements DepartmentRepository {
  const DepartmentHttp({
    this.client = const HttpClient<Department>(),
  });

  final HttpClient<Department> client;

  @override
  Future<BackendResponse<Department>> delete(final Department entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Department>> deleteAll({
    Iterable<Department>? entities,
  }) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Department>> deleteAllById(Iterable<int> ids) {
    // TODO: implement deleteAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Department>> deleteById(int id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Department>> findAll({int page = 1, int size = 10}) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Department>> findAllById(Iterable<int> ids) {
    // TODO: implement findAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Department>> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Department>> save(Department entity) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Department>> saveAll(Iterable<Department> entities) {
    // TODO: implement saveAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Department>> update(Department entity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Department>> updateAll(Iterable<Department> entities) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }
}
