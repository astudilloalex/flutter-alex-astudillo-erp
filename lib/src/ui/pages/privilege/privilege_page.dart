import 'package:alex_astudillo_erp/src/domain/entities/security/privilege.dart';
import 'package:alex_astudillo_erp/src/ui/dialogs/add_edit_privilege/add_edit_privilege_dialog.dart';
import 'package:alex_astudillo_erp/src/ui/pages/privilege/privilege_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/privilege/widgets/privilege_list.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/paginated/bottom_paginated_info.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivilegePage extends StatelessWidget {
  const PrivilegePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PrivilegeController controller = Get.find<PrivilegeController>();
    return CustomScaffold(
      appBar: CustomAppBar(
        title: Text('privileges'.tr),
      ),
      body: const PrivilegeList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.dialog<Privilege?>(
          const AddEditPrivilegeDialog(),
          barrierDismissible: false,
        ).then(controller.addPrivilege),
        child: const Icon(Icons.add_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      bottomNavigationBar: Obx(() {
        return BottomPaginatedInfo(
          controller.defaultResponse,
          loading: controller.loading,
          onNext: controller.nextPage,
          onPrevious: controller.previousPage,
        );
      }),
    );
  }
}
