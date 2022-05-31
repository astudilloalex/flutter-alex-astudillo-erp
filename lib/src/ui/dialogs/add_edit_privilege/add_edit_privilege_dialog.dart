import 'package:alex_astudillo_erp/src/ui/dialogs/add_edit_privilege/add_edit_privilege_controller.dart';
import 'package:alex_astudillo_erp/src/ui/dialogs/add_edit_privilege/widgets/add_edit_privilege_form.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/custom_add_edit_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEditPrivilegeDialog extends StatelessWidget {
  const AddEditPrivilegeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddEditPrivilegeController controller =
        Get.put<AddEditPrivilegeController>(AddEditPrivilegeController());
    return CustomAddEditDialog(
      maxWidth: 350.0,
      maxHeight: controller.privilege == null ? 220.0 : 265.0,
      content: [
        if (controller.privilege != null)
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'id'.tr,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '${controller.privilege?.id}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        if (controller.privilege != null)
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Divider(),
          ),
        const AddEditPrivilegeForm(),
      ],
      onSave: controller.save,
      save: controller.privilege == null,
      title:
          controller.privilege == null ? 'addPrivilege'.tr : 'editPrivilege'.tr,
    );
  }
}
