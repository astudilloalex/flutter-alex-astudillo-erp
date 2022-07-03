import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/scaffold/custom_scaffold.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/square_card_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: Text('security'.tr),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Wrap(
              children: [
                SquareCardButton(
                  icon: const Icon(Icons.group_outlined),
                  titleText: 'users'.tr,
                  onTap: () {},
                ),
                SquareCardButton(
                  icon: const Icon(Icons.lock_outline),
                  titleText: 'roles'.tr,
                  onTap: () {},
                ),
                SquareCardButton(
                  icon: const Icon(Icons.key_outlined),
                  titleText: 'privileges'.tr,
                  onTap: () => Get.toNamed(
                    '${RouteNames.security}${RouteNames.privilege}',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
