import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/core/exceptions/http_exceptions.dart';
import 'package:alex_astudillo_erp/src/data/http/company/phone_http.dart';
import 'package:alex_astudillo_erp/src/domain/entities/company/company.dart';
import 'package:alex_astudillo_erp/src/domain/entities/company/phone.dart';
import 'package:alex_astudillo_erp/src/domain/responses/company/phone_response.dart';
import 'package:get/get.dart';

class CompanyController extends GetxController {
  CompanyController(this._appController);

  final AppController _appController;

  final Rxn<Company> _company = Rxn<Company>();
  final Rxn<Phone> _personPhone = Rxn<Phone>();
  final RxBool _loading = RxBool(true);

  @override
  void onInit() {
    super.onInit();
    _company(_appController.company);
    _init();
  }

  Future<void> _init() async {
    try {
      const PhoneHttp http = PhoneHttp();
      final PhoneResponse response = await http.findByPersonId(
        _company.value?.person.id ?? 0,
      );
      if (response.phones.isNotEmpty) _personPhone(response.phones.first);
    } on HttpException catch (e) {
      _appController.manageHttpError(e);
    } on Exception catch (e) {
      _appController.manageError(e);
    } finally {
      _loading(false);
    }
  }

  bool get loading => _loading.value;
  Company get company => _company.value!;
  Phone? get personPhone => _personPhone.value;
}
