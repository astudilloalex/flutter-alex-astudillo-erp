import 'package:alex_astudillo_erp/src/ui/pages/advanced_settings/advanced_settings_controller.dart';
import 'package:get/get.dart';

class AdvancedSettingsBinding implements Bindings {
  const AdvancedSettingsBinding();

  @override
  void dependencies() {
    Get.lazyPut<AdvancedSettingsController>(
      () => AdvancedSettingsController(),
    );
  }
}
