import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/core/exceptions/http_exceptions.dart';
import 'package:alex_astudillo_erp/src/data/http/security/user_http.dart';
import 'package:alex_astudillo_erp/src/domain/entities/security/user.dart';
import 'package:alex_astudillo_erp/src/domain/responses/default_response.dart';
import 'package:alex_astudillo_erp/src/domain/responses/security/user_response.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  UserController(this._appController);

  final AppController _appController;
  final int _pageSize = 25;

  bool _loading = true;

  final List<User> _users = [];

  DefaultResponse _defaultResponse = const DefaultResponse(
    message: '',
    status: 200,
  );

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  Future<void> _init() async {
    try {
      const UserHttp http = UserHttp();
      final UserResponse response = await http.read(size: _pageSize);
      _users.addAll(response.users);
      _defaultResponse = response.defaultResponse;
    } on HttpException catch (e) {
      _appController.manageHttpError(e);
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
