import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/core/exceptions/http_exceptions.dart';
import 'package:alex_astudillo_erp/src/data/http/security/privilege_http.dart';
import 'package:alex_astudillo_erp/src/domain/entities/security/privilege.dart';
import 'package:alex_astudillo_erp/src/domain/responses/default_response.dart';
import 'package:alex_astudillo_erp/src/domain/responses/security/privilege_response.dart';
import 'package:get/get.dart';

class PrivilegeController extends GetxController {
  PrivilegeController(this._appController, this._privilegeHttp);

  final AppController _appController;
  final PrivilegeHttp _privilegeHttp;
  final int _pageSize = 15;

  final RxBool _loading = RxBool(true);
  final Rx<List<Privilege>> _privileges = Rx<List<Privilege>>([]);
  final Rx<DefaultResponse> _defaultResponse = Rx<DefaultResponse>(
    const DefaultResponse(status: 0, message: ''),
  );

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  Future<void> _init() async {
    try {
      final PrivilegeResponse response = await _privilegeHttp.read(
        page: defaultResponse.pageNumber ?? 1,
        size: _pageSize,
      );
      _privileges(response.data);
      _defaultResponse(response.defaultResponse);
    } on HttpException catch (e) {
      _appController.manageHttpError(e);
    } on Exception catch (e) {
      _appController.manageError(e);
    } finally {
      _loading(false);
    }
  }

  Future<void> nextPage() async {
    try {
      _loading(true);
      final PrivilegeResponse response = await _privilegeHttp.read(
        page: (_defaultResponse.value.pageNumber ?? 1) + 1,
        size: _pageSize,
      );
      _privileges(response.data);
      _defaultResponse(response.defaultResponse);
    } on HttpException catch (e) {
      _appController.manageHttpError(e);
    } on Exception catch (e) {
      _appController.manageError(e);
    } finally {
      _loading(false);
    }
  }

  Future<void> previousPage() async {
    try {
      _loading(true);
      final PrivilegeResponse response = await _privilegeHttp.read(
        page: (_defaultResponse.value.pageNumber ?? 2) - 1,
        size: _pageSize,
      );
      _privileges(response.data);
      _defaultResponse(response.defaultResponse);
    } on HttpException catch (e) {
      _appController.manageHttpError(e);
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

  void deletePrivilege(final Privilege privilege) {
    _appController.showOverlay(() async {
      try {
        final PrivilegeResponse response = await _privilegeHttp.delete(
          privilege,
        );
        if (response.defaultResponse.status == 200) {
          await _init();
          Get.back();
        }
      } on HttpException catch (e) {
        _appController.manageHttpError(e);
      } on Exception catch (e) {
        _appController.manageError(e);
      }
    });
  }

  bool get loading => _loading.value;
  List<Privilege> get privileges => _privileges.value;
  DefaultResponse get defaultResponse => _defaultResponse.value;
}
