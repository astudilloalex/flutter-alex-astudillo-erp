import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
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
      final BackendResponse<Phone> response = await http.findById(
        _company.value?.person.id ?? 0,
      );
      if (response.data.isNotEmpty) _personPhone(response.data.first);
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
