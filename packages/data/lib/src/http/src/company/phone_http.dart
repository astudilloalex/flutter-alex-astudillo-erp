import 'package:data/src/http/src/http_client.dart';
import 'package:domain/domain.dart';

class PhoneHttp implements PhoneRepository {
  const PhoneHttp({
    this.client = const HttpClient<Person>(),
  });

  final HttpClient<Person> client;

  @override
  Future<BackendResponse<Phone>> delete(Phone entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Phone>> deleteAll({Iterable<Phone>? entities}) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Phone>> deleteAllById(Iterable<int> ids) {
    // TODO: implement deleteAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Phone>> deleteById(int id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Phone>> findAll({int page = 1, int size = 10}) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Phone>> findAllById(Iterable<int> ids) {
    // TODO: implement findAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Phone>> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Phone>> save(Phone entity) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Phone>> saveAll(Iterable<Phone> entities) {
    // TODO: implement saveAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Phone>> update(Phone entity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Phone>> updateAll(Iterable<Phone> entities) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }
}
