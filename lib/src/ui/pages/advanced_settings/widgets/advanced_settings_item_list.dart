import 'package:alex_astudillo_erp/src/ui/pages/advanced_settings/widgets/advanced_settings_item.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:responsive_design/responsive_design.dart';

class AdvancedSettingsItemList extends StatelessWidget {
  const AdvancedSettingsItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ResponsiveType type = ResponsiveUtil(
      changePoints: ResponsiveSettings.instance.screenChangePoints,
      context: context,
    ).responsiveType;
    final List<Widget> items = [];
    if (type == ResponsiveType.phone || type == ResponsiveType.watch) {
      items.addAll([
        AdvancedSettingsItem(
          routeName: '${RouteNames.advancedSettings}${RouteNames.country}',
          title: 'users'.tr,
          icon: FontAwesomeIcons.user,
        ),
        AdvancedSettingsItem(
          routeName: '${RouteNames.advancedSettings}${RouteNames.country}',
          title: 'countries'.tr,
          icon: FontAwesomeIcons.map,
        ),
      ]);
    } else {
      items.addAll([
        Row(
          children: [
            Expanded(
              child: AdvancedSettingsItem(
                routeName:
                    '${RouteNames.advancedSettings}${RouteNames.country}',
                title: 'users'.tr,
                icon: FontAwesomeIcons.user,
              ),
            ),
            Expanded(
              child: AdvancedSettingsItem(
                routeName:
                    '${RouteNames.advancedSettings}${RouteNames.country}',
                title: 'countries'.tr,
                icon: FontAwesomeIcons.map,
              ),
            ),
          ],
        ),
      ]);
    }
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return items[index];
      },
    );
  }
}
