import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get/get.dart';

class CountryController extends GetxController {
  CountryController({
    required this.appController,
    required this.countryHttp,
  });

  final AppController appController;
  final CountryHttp countryHttp;

  final int _pageSize = 25;

  bool _loading = true;
  final List<Country> _countries = [];
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
      final BackendResponse<Country> response = await countryHttp.findAll(
        size: _pageSize,
      );
      _countries.addAll(response.data);
      _defaultResponse = response.defaultResponse;
    } on Exception catch (e) {
      appController.manageError(e);
    } finally {
      _loading = false;
      update();
    }
  }

  Future<void> nextPage() async {
    _loading = true;
    update();
    try {
      final BackendResponse<Country> response = await countryHttp.findAll(
        page: (_defaultResponse.pageNumber ?? 1) + 1,
        size: _pageSize,
      );
      _countries.clear();
      _countries.addAll(response.data);
      _defaultResponse = response.defaultResponse;
    } finally {
      _loading = false;
      update();
    }
  }

  Future<void> previousPage() async {
    _loading = true;
    update();
    try {
      final BackendResponse<Country> response = await countryHttp.findAll(
        page: (_defaultResponse.pageNumber ?? 2) - 1,
        size: _pageSize,
      );
      _countries.clear();
      _countries.addAll(response.data);
      _defaultResponse = response.defaultResponse;
    } finally {
      _loading = false;
      update();
    }
  }

  void addCountry(final Country? country) {
    if (country != null) {
      _countries.insert(0, country);
      if (_countries.length > 25) {
        _countries.removeLast();
        _defaultResponse = _defaultResponse.copyWith(
          last: false,
          totalElements: _defaultResponse.totalElements! + 1,
        );
      } else {
        _defaultResponse = _defaultResponse.copyWith(
          totalElements: _defaultResponse.totalElements! + 1,
          numberOfElements: _defaultResponse.numberOfElements! + 1,
        );
      }
      update();
    }
  }

  void updateCountry(final Country? country) {
    if (country != null) {
      final int index = _countries.indexWhere(
        (element) => element.id == country.id,
      );
      _countries[index] = country;
      update();
    }
  }

  bool get loading => _loading;
  DefaultResponse get defaultResponse => _defaultResponse;
  List<Country> get countries => _countries;
}
