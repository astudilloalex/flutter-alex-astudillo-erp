import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/country/country_controller.dart';
import 'package:data/data.dart';
import 'package:get/get.dart';

class CountryBinding implements Bindings {
  const CountryBinding();
  @override
  void dependencies() {
    Get.lazyPut<CountryController>(
      () => CountryController(
        appController: Get.find<AppController>(),
        countryHttp: const CountryHttp(),
      ),
    );
  }
}
