import 'package:alex_astudillo_erp/src/ui/pages/country/controllers/add_edit_country_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/country/widgets/add_edit_country/widgets/add_edit_country_checkbox.dart';
import 'package:alex_astudillo_erp/src/ui/pages/country/widgets/add_edit_country/widgets/add_edit_country_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEditCountryDialog extends StatelessWidget {
  const AddEditCountryDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddEditCountryController controller =
        Get.put<AddEditCountryController>(
      AddEditCountryController(),
    );
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              controller.country == null ? 'addCountry'.tr : 'editCountry'.tr,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 16.0),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300.0),
              child: const AddEditCountryForm(),
            ),
            const SizedBox(height: 16.0),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300.0),
              child: const AddEditCountryCheckbox(),
            ),
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
                      icon: Icon(
                        controller.country == null
                            ? Icons.save_outlined
                            : Icons.update_outlined,
                      ),
                      label: Text(
                        controller.country == null ? 'save'.tr : 'update'.tr,
                      ),
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
