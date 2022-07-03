import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/app/controllers/auth_controller.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  SignInController(this._appController, this._authController);
  final AppController _appController;
  final AuthController _authController;

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
    const UserHttp http = UserHttp();
    _appController.showOverlay(() async {
      try {
        final BackendResponse<User> response = await http.authenticate(
          usernameController.text.trim(),
          passwordController.text,
        );
        if (response.defaultResponse.statusCode == 200) {
          await const SecureStorageLocal().saveToken(response.token);
          await const CompanyHttp().findById(1).then((value) {
            _appController.company = value.data.first;
          });
          // await const EstablishmentHttp()
          //     .findById(
          //   _appController.company!.id!,
          // )
          //     .then(
          //   (value) {
          //     if (value.data.isNotEmpty) {
          //       _appController.establishment = value.data.first;
          //     }
          //   },
          // );
          _authController.user = response.data.first;
          Get.offNamed(RouteNames.home);
        }
      } on Exception catch (e) {
        _appController.manageError(e);
      }
    });
  }

  bool get visiblePassword => _visiblePassword.value;
}
