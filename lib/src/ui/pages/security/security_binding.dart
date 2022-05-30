import 'package:alex_astudillo_erp/src/ui/pages/security/security_controller.dart';
import 'package:get/get.dart';

class SecurityBinding implements Bindings {
  const SecurityBinding();

  @override
  void dependencies() {
    Get.lazyPut<SecurityController>(() => SecurityController());
  }
}
