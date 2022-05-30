import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/user/user_controller.dart';
import 'package:get/get.dart';

class UserBinding implements Bindings {
  const UserBinding();

  @override
  void dependencies() {
    Get.put<UserController>(
      UserController(Get.find<AppController>()),
    );
  }
}
