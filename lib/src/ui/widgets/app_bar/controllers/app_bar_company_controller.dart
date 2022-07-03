import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get/get.dart';

class AppBarCompanyController extends GetxController {
  AppBarCompanyController(this._appController);

  final AppController _appController;

  final RxBool _loading = RxBool(true);
  final Rx<List<Company>> _companies = Rx<List<Company>>([]);
  final Rxn<Company> _selectedCompany = Rxn<Company>();
  final Rxn<Establishment> _selectedEstablishment = Rxn<Establishment>();
  final Rx<List<Establishment>> _establishments = Rx<List<Establishment>>([]);

  final EstablishmentHttp _establishmentHttp = const EstablishmentHttp();

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  Future<void> _init() async {
    try {
      await const CompanyHttp().findAll().then((value) {
        _companies(value.data);
      });
      _selectedCompany(
        _companies.value.firstWhereOrNull(
          (element) => element.id == _appController.company?.id,
        ),
      );
      await updateEstablishments();
    } on Exception catch (e) {
      _appController.manageError(e);
    } finally {
      _loading(false);
    }
  }

  Future<void> updateEstablishments() async {
    await _establishmentHttp
        .findById(_selectedCompany.value!.id!)
        .then((value) => _establishments(value.data));
    if (establishments.isNotEmpty) {
      _selectedEstablishment(
        _establishments.value.firstWhereOrNull(
          (element) => element.id == _appController.establishment?.id,
        ),
      );
    }
  }

  void save() {
    _appController.company = _selectedCompany.value;
  }

  set selectedCompany(final Company? company) {
    _selectedCompany(company);
    updateEstablishments();
  }

  set selectedEstablishment(final Establishment? establishment) {
    _selectedEstablishment(establishment);
  }

  bool get loading => _loading.value;
  List<Company> get companies => _companies.value;
  List<Establishment> get establishments => _establishments.value;
  Company? get selectedCompany => _selectedCompany.value;
  Establishment? get selectedEstablishment => _selectedEstablishment.value;
}
