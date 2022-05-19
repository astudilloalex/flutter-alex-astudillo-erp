import 'package:alex_astudillo_erp/src/ui/pages/splash/splash_controller.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SplashController controller = Get.find<SplashController>();
    return Scaffold(
      body: Obx(() {
        if (controller.loading) {
          return const CustomProgressIndicator();
        }
        return const Center();
      }),
    );
  }
}
