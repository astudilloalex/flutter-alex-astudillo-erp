import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController(this._appController);

  final AppController _appController;

  int pageIndex = 0;

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  void getUser() {
    // _appController.showOverlay(() async {
    //   await const UserHttp().user;
    // });
    _appController.showOverlay(() async {});
  }
}
