import 'package:alex_astudillo_erp/src/domain/entities/security/user.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  User? _user;

  set user(final User? user) {
    if (user != null) {
      _user = user;
      update();
    } else {
      Get.offAllNamed(RouteNames.signIn);
    }
  }

  bool get authenticated => _user != null;
  User? get user => _user;
  bool get isSuperuser =>
      user?.roles.firstWhereOrNull((element) => element.name == 'SUPER') !=
      null;
}
