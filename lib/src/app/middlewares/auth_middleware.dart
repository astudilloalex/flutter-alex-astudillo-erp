import 'package:alex_astudillo_erp/src/app/controllers/auth_controller.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final AuthController authController = Get.find<AuthController>();
    return authController.authenticated || route == RouteNames.signIn
        ? null
        : const RouteSettings(name: RouteNames.signIn);
  }
}
