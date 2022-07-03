import 'package:alex_astudillo_erp/src/ui/dialogs/add_edit_role/add_edit_role_controller.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEditRoleForm extends StatelessWidget {
  const AddEditRoleForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddEditRoleController controller = Get.find<AddEditRoleController>();
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
