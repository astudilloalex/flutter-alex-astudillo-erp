import 'package:alex_astudillo_erp/src/ui/pages/sign_in/sign_in_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/sign_in/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignInController controller = Get.find<SignInController>();
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            const Center(child: SignInForm()),
            const SizedBox(height: 16.0),
            Center(
              child: ElevatedButton.icon(
                onPressed: controller.signIn,
                icon: const Icon(Icons.login),
                label: Text('enter'.tr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
