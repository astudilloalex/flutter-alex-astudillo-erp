import 'package:alex_astudillo_erp/src/ui/dialogs/add_edit_privilege/add_edit_privilege_controller.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEditPrivilegeForm extends StatelessWidget {
  const AddEditPrivilegeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddEditPrivilegeController controller =
        Get.find<AddEditPrivilegeController>();
    return Form(
      key: controller.formKey,
      child: CustomTextFormField(
        controller: controller.nameController,
        labelText: 'name'.tr,
        maxLength: 10,
        validator: controller.validateName,
      ),
    );
  }
}
