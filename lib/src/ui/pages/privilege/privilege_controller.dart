import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get/get.dart';

class PrivilegeController extends GetxController {
  PrivilegeController(this._appController, this._privilegeHttp);

  final AppController _appController;
  final PrivilegeHttp _privilegeHttp;
  final int _pageSize = 15;

  final RxBool _loading = RxBool(true);
  final Rx<List<Privilege>> _privileges = Rx<List<Privilege>>([]);
  final Rx<DefaultResponse> _defaultResponse = Rx<DefaultResponse>(
    const DefaultResponse(statusCode: 0, message: ''),
  );

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  Future<void> _init() async {
    try {
      final BackendResponse<Privilege> response = await _privilegeHttp.findAll(
        page: defaultResponse.pageNumber ?? 1,
        size: _pageSize,
      );
      _privileges(response.data);
      _defaultResponse(response.defaultResponse);
    } on Exception catch (e) {
      _appController.manageError(e);
    } finally {
      _loading(false);
    }
  }

  Future<void> nextPage() async {
    try {
      _loading(true);
      final BackendResponse<Privilege> response = await _privilegeHttp.findAll(
        page: (_defaultResponse.value.pageNumber ?? 1) + 1,
        size: _pageSize,
      );
      _privileges(response.data);
      _defaultResponse(response.defaultResponse);
    } on Exception catch (e) {
      _appController.manageError(e);
    } finally {
      _loading(false);
    }
  }

  Future<void> previousPage() async {
    try {
      _loading(true);
      final BackendResponse<Privilege> response = await _privilegeHttp.findAll(
        page: (_defaultResponse.value.pageNumber ?? 2) - 1,
        size: _pageSize,
      );
      _privileges(response.data);
      _defaultResponse(response.defaultResponse);
    } on Exception catch (e) {
      _appController.manageError(e);
    } finally {
      _loading(false);
    }
  }

  void addPrivilege(final Privilege? privilege) {
    if (privilege == null) return;
    final List<Privilege> privileges = [..._privileges.value];
    privileges.insert(0, privilege);
    if (privileges.length > _pageSize) privileges.removeLast();
    _privileges(privileges);
  }

  void updatePrivilege(final Privilege? privilege) {
    if (privilege == null) return;
    final List<Privilege> privileges = [..._privileges.value];
    final int index = privileges.indexWhere(
      (element) => element.id == privilege.id,
    );
    if (index >= 0) privileges[index] = privilege;
    _privileges(privileges);
  }

  void deletePrivilege(final Privilege privilege) {
    _appController.showOverlay(() async {
      try {
        final BackendResponse<Privilege> response = await _privilegeHttp.delete(
          privilege,
        );
        if (response.defaultResponse.statusCode == 200) {
          await _init();
          Get.back();
        }
      } on Exception catch (e) {
        _appController.manageError(e);
      }
    });
  }

  bool get loading => _loading.value;
  List<Privilege> get privileges => _privileges.value;
  DefaultResponse get defaultResponse => _defaultResponse.value;
}
