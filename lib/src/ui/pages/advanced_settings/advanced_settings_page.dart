import 'package:alex_astudillo_erp/src/ui/pages/advanced_settings/widgets/advanced_settings_item.dart';
import 'package:alex_astudillo_erp/src/ui/pages/advanced_settings/widgets/advanced_settings_item_list.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AdvancedSettingsPage extends StatelessWidget {
  const AdvancedSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: ListView(
        children: [
          Wrap(
            children: [
              AdvancedSettingsItem(
                routeName: '${RouteNames.advancedSettings}${RouteNames.user}',
                title: 'users'.tr,
                icon: FontAwesomeIcons.user,
              ),
              AdvancedSettingsItem(
                routeName:
                    '${RouteNames.advancedSettings}${RouteNames.country}',
                title: 'countries'.tr,
                icon: FontAwesomeIcons.globe,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
