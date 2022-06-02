import 'package:data/src/http/src/http_client.dart';
import 'package:domain/domain.dart';

class AddressHttp implements AddressRepository {
  const AddressHttp({
    this.client = const HttpClient<Address>(),
  });

  final HttpClient<Address> client;

  @override
  Future<BackendResponse<Address>> delete(Address entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Address>> deleteAll({Iterable<Address>? entities}) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Address>> deleteAllById(Iterable<int> ids) {
    // TODO: implement deleteAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Address>> deleteById(int id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Address>> findAll({int page = 1, int size = 10}) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Address>> findAllById(Iterable<int> ids) {
    // TODO: implement findAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Address>> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Address>> save(Address entity) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Address>> saveAll(Iterable<Address> entities) {
    // TODO: implement saveAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Address>> update(Address entity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<Address>> updateAll(Iterable<Address> entities) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }
}
