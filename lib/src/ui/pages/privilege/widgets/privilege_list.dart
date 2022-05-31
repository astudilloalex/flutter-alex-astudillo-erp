import 'package:alex_astudillo_erp/src/ui/pages/privilege/privilege_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/privilege/widgets/privilege_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivilegeList extends StatelessWidget {
  const PrivilegeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PrivilegeController controller = Get.find<PrivilegeController>();
    return Obx(
      () {
        return ListView.builder(
          primary: false,
          itemCount: controller.privileges.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: PrivilegeTile(controller.privileges[index]),
            );
          },
        );
      },
    );
  }
}
