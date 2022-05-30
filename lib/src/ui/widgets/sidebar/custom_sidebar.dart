import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:alex_astudillo_erp/src/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_design/responsive_design.dart';

class CustomSidebar extends Sidebar {
  const CustomSidebar({Key? key}) : super(key: key);

  @override
  bool get asDrawer => true;

  @override
  Widget? get header {
    return SidebarItem(
      icon: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 30.0),
        child: Image.asset('assets/images/app_icon.png'),
      ),
      title: const Text(
        'AA ERP',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        if (Get.currentRoute != RouteNames.home) {
          Get.offAllNamed(RouteNames.home);
        }
      },
    );
  }

  @override
  List<Widget> get items {
    final AppController controller = Get.find<AppController>();
    return [
      SidebarItem(
        icon: const Icon(Icons.security_outlined),
        title: Text('security'.tr),
        onTap: () {
          if (controller.currentRoute != RouteNames.security) {
            Get.offAllNamed(RouteNames.security);
          }
        },
        selected: controller.currentRoute.contains(RouteNames.security),
        selectedColor: LightColors.primary,
      ),
      SidebarItem(
        icon: const Icon(Icons.business_outlined),
        title: Text('myCompany'.tr),
        onTap: () {
          if (controller.currentRoute != RouteNames.company) {
            Get.offAllNamed(RouteNames.company);
          }
        },
        selected: controller.currentRoute.contains(RouteNames.company),
        selectedColor: LightColors.primary,
      ),
      SidebarItem(
        icon: const Icon(Icons.settings_outlined),
        title: Text('advancedSettings'.tr),
        onTap: () {
          if (controller.currentRoute != RouteNames.advancedSettings) {
            Get.offAllNamed(RouteNames.advancedSettings);
          }
        },
        selected: controller.currentRoute.contains(RouteNames.advancedSettings),
        selectedColor: LightColors.primary,
      ),
    ];
  }
}
