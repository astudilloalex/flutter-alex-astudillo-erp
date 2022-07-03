import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/privilege/privilege_controller.dart';
import 'package:data/data.dart';
import 'package:get/get.dart';

class PrivilegeBinding implements Bindings {
  const PrivilegeBinding();

  @override
  void dependencies() {
    Get.lazyPut<PrivilegeController>(
      () => PrivilegeController(
        Get.find<AppController>(),
        const PrivilegeHttp(),
      ),
    );
  }
}
