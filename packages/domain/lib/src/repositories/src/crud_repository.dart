import 'package:domain/src/responses/responses.dart';

/// Generic CRUD operations on a repository for a specific [T].
abstract class CrudRepository<T, ID> {
  /// Define a [CrudRepository] class.
  const CrudRepository();

  /// Deletes a given [entity].
  Future<BackendResponse<T>> delete(final T entity);

  /// Deletes the given [entities].
  Future<BackendResponse<T>> deleteAll({final Iterable<T>? entities});

  ///Deletes all instances of the type [T] with the given [ids].
  Future<BackendResponse<T>> deleteAllById(final Iterable<ID> ids);

  /// Deletes the entity with the given [id].
  Future<BackendResponse<T>> deleteById(final ID id);

  /// Returns a List of [T] inside [BackendResponse] meeting the paging restriction
  /// provided in the [page] number and page [size].
  Future<BackendResponse<T>> findAll({final int page = 1, final int size = 10});

  /// Returns all instances of the type [T] inside [BackendResponse] with the
  /// given [ids].
  Future<BackendResponse<T>> findAllById(final Iterable<ID> ids);

  /// Retrieves an entity inside [BackendResponse] by its [id].
  Future<BackendResponse<T>> findById(final ID id);

  /// Saves a given [entity].
  Future<BackendResponse<T>> save(final T entity);

  /// Saves all given [entities].
  Future<BackendResponse<T>> saveAll(final Iterable<T> entities);
}
