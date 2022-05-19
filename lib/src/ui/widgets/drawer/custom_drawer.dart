import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/app/controllers/auth_controller.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/drawer/widgets/advanced_settings_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: ListView(
        children: const [
          AdvancedSettingsOptions(),
        ],
      ),
    );
  }
}
