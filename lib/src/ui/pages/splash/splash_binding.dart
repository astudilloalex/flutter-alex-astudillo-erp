import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/app/controllers/auth_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding implements Bindings {
  const SplashBinding();

  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(
        Get.find<AppController>(),
        Get.find<AuthController>(),
      ),
    );
  }
}
