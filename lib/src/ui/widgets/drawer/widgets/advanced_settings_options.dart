import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/app/controllers/auth_controller.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdvancedSettingsOptions extends StatelessWidget {
  const AdvancedSettingsOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.find<AppController>();
    return GetBuilder<AuthController>(builder: (controller) {
      if (!controller.isSuperuser) return const SizedBox.shrink();
      return ExpansionTile(
        title: Text('advancedSettings'.tr),
        children: [
          ListTile(
            onTap: () {
              if (appController.drawerOpen) Get.back();
              Get.offNamed(
                RouteNames.advancedSettings,
                preventDuplicates: true,
              );
            },
            title: Text('countries'.tr),
          ),
        ],
      );
    });
  }
}
