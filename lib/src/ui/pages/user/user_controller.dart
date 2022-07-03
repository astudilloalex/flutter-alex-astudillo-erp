import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  UserController(this._appController);

  final AppController _appController;
  final int _pageSize = 25;

  bool _loading = true;

  final List<User> _users = [];

  DefaultResponse _defaultResponse = const DefaultResponse(
    message: '',
    statusCode: 200,
  );

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  Future<void> _init() async {
    try {
      const UserHttp http = UserHttp();
      final BackendResponse<User> response =
          await http.findAll(size: _pageSize);
      _users.addAll(response.data);
      _defaultResponse = response.defaultResponse;
    } on Exception catch (e) {
      _appController.manageError(e);
    } finally {
      _loading = false;
      update();
    }
  }

  bool get loading => _loading;
  DefaultResponse get defaultResponse => _defaultResponse;
  List<User> get users => _users;
}
