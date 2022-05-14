import 'package:alex_astudillo_erp/src/app_controller.dart';
import 'package:alex_astudillo_erp/src/core/exceptions/http_exceptions.dart';
import 'package:alex_astudillo_erp/src/data/http/src/sign_in_http.dart';
import 'package:alex_astudillo_erp/src/domain/requests/src/sign_in_request.dart';
import 'package:alex_astudillo_erp/src/domain/responses/src/sign_in_response.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  SignInController(this._appController);
  final AppController _appController;

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

  // Sign in method.
  void signIn() {
    const SignInHttp http = SignInHttp();
    _appController.showOverlay(() async {
      try {
        final SignInResponse response = await http.signIn(
          SignInRequest(
            username: usernameController.text.trim(),
            password: passwordController.text,
          ),
        );
        if (response.response.status == 200) {
          Get.offNamed(RouteNames.home);
        }
      } on HttpException catch (e) {
        _appController.manageHttpError(e);
      } on Exception catch (e) {
        _appController.manageError(e);
      }
    });
  }

  bool get visiblePassword => _visiblePassword.value;
}