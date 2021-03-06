import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddEditPrivilegeController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();

  final Privilege? privilege = Get.arguments as Privilege?;

  @override
  void onInit() {
    super.onInit();
    nameController.text = privilege?.name ?? '';
  }

  @override
  void onClose() {
    nameController.dispose();
    super.onClose();
  }

  void save() {
    if (!formKey.currentState!.validate()) return;
    final AppController appController = Get.find<AppController>();
    appController.showOverlay(() async {
      try {
        const PrivilegeHttp http = PrivilegeHttp();
        final BackendResponse<Privilege> response = privilege == null
            ? await http.save(
                Privilege(name: nameController.text.trim().toUpperCase()),
              )
            : await http.update(
                privilege!.copyWith(
                  name: nameController.text.trim().toUpperCase(),
                ),
              );
        if (response.data.isNotEmpty) {
          Get.back(result: response.data.first);
        }
      } on Exception catch (e) {
        appController.manageError(e);
      }
    });
  }

  String? validateName(final String? value) {
    if (value == null || GetUtils.isLengthLessThan(value, 3)) {
      return 'invalidName'.tr;
    }
    return null;
  }
}
