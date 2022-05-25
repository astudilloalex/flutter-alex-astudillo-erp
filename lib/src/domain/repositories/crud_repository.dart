/// The common CRUD repository.
/// The [T] represents the returns, and [E] represents the entity.
abstract class CrudRepository<T, E> {
  /// Define a [CrudRepository] class.
  const CrudRepository();

  /// Returns a [T], when create a [entity].
  Future<T> create(final E entity);

  /// Returns a [T], when read data..
  Future<T> read({final int page = 1, final int size = 10});

  /// Returns a [T], when update a [entity].
  Future<T> update(final E entity);

  /// Returns a [T], when delete a [entity].
  Future<T> delete(final E entity);
}
