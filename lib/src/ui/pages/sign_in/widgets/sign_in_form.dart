import 'package:alex_astudillo_erp/src/ui/pages/sign_in/sign_in_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/sign_in/widgets/sign_in_password_input.dart';
import 'package:alex_astudillo_erp/src/ui/pages/sign_in/widgets/sign_in_username_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignInController controller = Get.find<SignInController>();
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 280.0),
      child: Form(
        key: controller.formKey,
        child: Column(
          children: const [
            SignInUsernameInput(),
            SizedBox(height: 16.0),
            SignInPasswordInput(),
          ],
        ),
      ),
    );
  }
}
