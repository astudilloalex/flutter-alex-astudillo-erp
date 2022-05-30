import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/company/company_controller.dart';
import 'package:get/get.dart';

class CompanyBinding implements Bindings {
  const CompanyBinding();

  @override
  void dependencies() {
    Get.lazyPut<CompanyController>(
      () => CompanyController(Get.find<AppController>()),
    );
  }
}
