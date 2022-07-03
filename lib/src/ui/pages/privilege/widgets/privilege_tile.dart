import 'package:alex_astudillo_erp/src/ui/dialogs/add_edit_privilege/add_edit_privilege_dialog.dart';
import 'package:alex_astudillo_erp/src/ui/pages/privilege/privilege_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/privilege/widgets/privilege_delete_dialog.dart';
import 'package:alex_astudillo_erp/src/ui/pages/privilege/widgets/privilege_detail_dialog.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivilegeTile extends StatelessWidget {
  const PrivilegeTile(this.privilege, {Key? key}) : super(key: key);

  final Privilege privilege;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        minLeadingWidth: 0.0,
        title: Row(
          children: [
            Expanded(
              child: Text(
                privilege.name,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            IconButton(
              onPressed: () => Get.dialog(PrivilegeDetailDialog(privilege)),
              icon: const Icon(Icons.visibility_outlined),
              splashRadius: 25.0,
            ),
            const SizedBox(width: 5.0),
            IconButton(
              onPressed: () => Get.dialog<Privilege?>(
                const AddEditPrivilegeDialog(),
                arguments: privilege,
                barrierDismissible: false,
              ).then(Get.find<PrivilegeController>().updatePrivilege),
              icon: const Icon(Icons.edit_outlined),
              splashRadius: 25.0,
            ),
            const SizedBox(width: 5.0),
            IconButton(
              onPressed: () => Get.dialog<Privilege?>(
                PrivilegeDeleteDialog(privilege),
                barrierDismissible: false,
              ),
              icon: const Icon(Icons.delete_outline),
              splashRadius: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}
