import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/app/controllers/auth_controller.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:data/data.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController(this._appController, this._authController);

  final AppController _appController;
  final AuthController _authController;

  final RxBool _loading = RxBool(true);
  final RxnString _error = RxnString();

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  Future<void> _init() async {
    try {
      // await const UserHttp().findByUsername('username').then((value) {
      //   _authController.user = value.data.first;
      // });
      // await const CompanyHttp().findById(1).then((value) {
      //   _appController.company = value.data.first;
      // });
      await Future.delayed(const Duration(seconds: 2));
      Get.offNamed(RouteNames.home);
    } on Exception catch (e) {
      _error(e.toString());
      _appController.manageError(e);
    } finally {
      _loading(false);
    }
  }

  bool get loading => _loading.value;
  String? get error => _error.value;
}
