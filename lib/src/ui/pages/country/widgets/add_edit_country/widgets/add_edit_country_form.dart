import 'package:alex_astudillo_erp/src/ui/pages/country/controllers/add_edit_country_controller.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEditCountryForm extends StatelessWidget {
  const AddEditCountryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddEditCountryController controller =
        Get.find<AddEditCountryController>();
    return Form(
      key: controller.formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextFormField(
            controller: controller.codeController,
            labelText: 'code'.tr,
            maxLength: 2,
            validator: controller.validateCode,
          ),
          const SizedBox(height: 16.0),
          CustomTextFormField(
            controller: controller.nameController,
            labelText: 'name'.tr,
            maxLength: 150,
            validator: controller.validateName,
          ),
        ],
      ),
    );
  }
}
