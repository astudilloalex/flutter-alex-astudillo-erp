import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/app/controllers/auth_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/sign_in/sign_in_controller.dart';
import 'package:get/get.dart';

class SignInBinding implements Bindings {
  const SignInBinding();

  @override
  void dependencies() {
    Get.lazyPut<SignInController>(
      () => SignInController(
        Get.find<AppController>(),
        Get.find<AuthController>(),
      ),
    );
  }
}
