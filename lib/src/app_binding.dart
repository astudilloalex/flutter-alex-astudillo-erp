import 'package:alex_astudillo_erp/src/app_controller.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  const AppBinding();

  @override
  void dependencies() {
    Get.put<AppController>(AppController(), permanent: true);
  }
}
