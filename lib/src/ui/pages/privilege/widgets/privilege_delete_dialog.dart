import 'package:alex_astudillo_erp/src/ui/pages/privilege/privilege_controller.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/custom_confirm_delete_dialog.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivilegeDeleteDialog extends StatelessWidget {
  const PrivilegeDeleteDialog(this.privilege, {Key? key}) : super(key: key);

  final Privilege privilege;

  @override
  Widget build(BuildContext context) {
    final PrivilegeController controller = Get.find<PrivilegeController>();
    return CustomConfirmDeleteDialog(
      title: '${'delete'.tr} ${'privilege'.tr.toLowerCase()} ${privilege.name}',
      onConfirm: () => controller.deletePrivilege(privilege),
    );
  }
}
