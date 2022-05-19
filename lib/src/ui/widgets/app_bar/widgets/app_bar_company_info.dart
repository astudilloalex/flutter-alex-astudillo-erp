import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/app_bar/controllers/app_bar_company_controller.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/app_bar/widgets/app_bar_company_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_design/responsive_design.dart';

class AppBarCompanyInfo extends StatelessWidget {
  const AppBarCompanyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      phone: IconButton(
        onPressed: _showDialog,
        icon: const Icon(Icons.business_outlined),
        splashRadius: 25.0,
      ),
      desktop: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: OutlinedButton.icon(
          onPressed: _showDialog,
          icon: const Icon(Icons.business_outlined),
          label: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text('${'company'.tr}: '),
                  GetBuilder<AppController>(
                    builder: (controller) {
                      return Text(controller.company?.tradename ?? '');
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text('${'establishment'.tr}: '),
                  GetBuilder<AppController>(
                    builder: (controller) {
                      return Text(
                        '${controller.establishment?.code} - ${controller.establishment?.name}',
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog() {
    Get.lazyPut<AppBarCompanyController>(
      () => AppBarCompanyController(Get.find<AppController>()),
    );
    Get.dialog(const AppBarCompanyDialog(), barrierDismissible: false);
  }
}
