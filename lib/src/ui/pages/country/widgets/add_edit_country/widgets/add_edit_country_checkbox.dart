import 'package:alex_astudillo_erp/src/ui/pages/country/controllers/add_edit_country_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEditCountryCheckbox extends StatelessWidget {
  const AddEditCountryCheckbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddEditCountryController controller =
        Get.find<AddEditCountryController>();
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: const BorderSide(width: 0.5),
      ),
      child: Obx(() {
        return CheckboxListTile(
          title: Text('active'.tr),
          value: controller.active,
          onChanged: (value) {
            controller.active = value ?? false;
          },
        );
      }),
    );
  }
}
