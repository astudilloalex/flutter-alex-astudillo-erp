import 'package:data/src/http/src/http_client.dart';
import 'package:domain/domain.dart';

class PersonDocumentTypeHttp implements PersonDocumentTypeRepository {
  const PersonDocumentTypeHttp({
    this.client = const HttpClient<PersonDocumentType>(),
  });

  final HttpClient<PersonDocumentType> client;

  @override
  Future<BackendResponse<PersonDocumentType>> delete(
    PersonDocumentType entity,
  ) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<PersonDocumentType>> deleteAll({
    Iterable<PersonDocumentType>? entities,
  }) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<PersonDocumentType>> deleteAllById(Iterable<int> ids) {
    // TODO: implement deleteAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<PersonDocumentType>> deleteById(int id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<PersonDocumentType>> findAll({
    int page = 1,
    int size = 10,
  }) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<PersonDocumentType>> findAllById(Iterable<int> ids) {
    // TODO: implement findAllById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<PersonDocumentType>> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<PersonDocumentType>> save(PersonDocumentType entity) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<PersonDocumentType>> saveAll(
    Iterable<PersonDocumentType> entities,
  ) {
    // TODO: implement saveAll
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<PersonDocumentType>> update(
    PersonDocumentType entity,
  ) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<BackendResponse<PersonDocumentType>> updateAll(
    Iterable<PersonDocumentType> entities,
  ) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }
}
