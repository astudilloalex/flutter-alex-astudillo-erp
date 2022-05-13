import 'package:alex_astudillo_erp/src/ui/pages/sign_in/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPasswordInput extends StatelessWidget {
  const SignInPasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignInController controller = Get.find<SignInController>();
    return Obx(() {
      return TextFormField(
        controller: controller.passwordController,
        obscureText: !controller.visiblePassword,
        decoration: InputDecoration(
          labelText: 'password'.tr,
          isDense: true,
          suffixIcon: IconButton(
            splashRadius: 20.0,
            onPressed: controller.changeVisiblePassword,
            icon: Icon(
              controller.visiblePassword
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
            ),
          ),
        ),
      );
    });
  }
}
