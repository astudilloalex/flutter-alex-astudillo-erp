import 'package:alex_astudillo_erp/src/ui/theme/colors.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/app_bar/controllers/app_bar_company_controller.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/custom_dropdown_button.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarCompanyDialog extends StatelessWidget {
  const AppBarCompanyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppBarCompanyController controller =
        Get.find<AppBarCompanyController>();
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'chooseWorkDomain'.tr,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 200.0),
              child: const Divider(),
            ),
            Text(
              '${'company'.tr}:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5.0),
            Obx(() {
              if (controller.companies.isEmpty) {
                return Container(
                  width: 300.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: LightColors.primaryVariant.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Center(child: Text('loading'.tr)),
                );
              }
              return CustomDropdownButton<Company>(
                value: controller.selectedCompany,
                items: List.generate(controller.companies.length, (index) {
                  return DropdownMenuItem(
                    value: controller.companies[index],
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Text(controller.companies[index].tradename),
                    ),
                  );
                }),
                onChanged: (value) {
                  controller.selectedCompany = value;
                },
              );
            }),
            const SizedBox(height: 16.0),
            Text(
              '${'establishment'.tr}:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5.0),
            Obx(() {
              if (controller.establishments.isEmpty) {
                return Container(
                  width: 300.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: LightColors.primaryVariant.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Center(child: Text('loading'.tr)),
                );
              }
              return CustomDropdownButton<Establishment>(
                value: controller.selectedEstablishment,
                items: List.generate(controller.establishments.length, (index) {
                  return DropdownMenuItem(
                    value: controller.establishments[index],
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Text(controller.establishments[index].name),
                    ),
                  );
                }),
                onChanged: (value) {
                  controller.selectedEstablishment = value;
                },
              );
            }),
            const SizedBox(height: 16.0),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300.0),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120.0, 48.0),
                      ),
                      onPressed: controller.save,
                      icon: const Icon(Icons.save_outlined),
                      label: Text('save'.tr),
                    ),
                    const SizedBox(width: 16.0),
                    OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(120, 48.0),
                      ),
                      onPressed: () => Get.back(),
                      icon: const Icon(Icons.cancel_outlined),
                      label: Text('cancel'.tr),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
