import 'package:alex_astudillo_erp/src/ui/pages/sign_in/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInUsernameInput extends StatelessWidget {
  const SignInUsernameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignInController controller = Get.find<SignInController>();
    return TextFormField(
      controller: controller.usernameController,
      decoration: InputDecoration(
        labelText: 'username'.tr,
        isDense: true,
      ),
    );
  }
}
