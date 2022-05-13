import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final RxBool _visiblePassword = RxBool(false);

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void changeVisiblePassword() => _visiblePassword(!_visiblePassword.value);

  void signIn() {
    Get.toNamed(RouteNames.home);
  }

  bool get visiblePassword => _visiblePassword.value;
}
