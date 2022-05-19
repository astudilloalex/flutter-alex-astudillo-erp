import 'package:alex_astudillo_erp/src/domain/repositories/local/storage_repository.dart';
import 'package:get_storage/get_storage.dart';

class StorageLocal implements StorageRepository {
  const StorageLocal();
  static GetStorage? _storage;
  GetStorage get storage => _storage ??= GetStorage();

  @override
  int get currentCompanyId => storage.read('currentCompanyId') ?? 0;
}
