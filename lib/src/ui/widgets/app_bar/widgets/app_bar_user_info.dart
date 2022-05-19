import 'package:alex_astudillo_erp/src/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_design/responsive_design.dart';

class AppBarUserInfo extends StatelessWidget {
  const AppBarUserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.find<AuthController>();
    return ResponsiveWidget(
      desktop: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.person_outline),
          label: Text(
            controller.user?.username ?? '',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      phone: IconButton(
        onPressed: () {},
        splashRadius: 25.0,
        icon: const Icon(Icons.person_outline),
      ),
    );
  }
}
