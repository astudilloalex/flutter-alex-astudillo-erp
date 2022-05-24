import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/core/exceptions/http_exceptions.dart';
import 'package:alex_astudillo_erp/src/data/http/src/country_http.dart';
import 'package:alex_astudillo_erp/src/domain/entities/country.dart';
import 'package:alex_astudillo_erp/src/domain/responses/default_response.dart';
import 'package:alex_astudillo_erp/src/domain/responses/src/country_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryController extends GetxController {
  CountryController({
    required this.appController,
    required this.countryHttp,
  });

  final AppController appController;
  final CountryHttp countryHttp;

  final ScrollController scrollController = ScrollController();

  bool _loading = true;
  final List<Country> _countries = [];
  DefaultResponse _defaultResponse = const DefaultResponse(
    message: '',
    status: 200,
  );

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  Future<void> _init() async {
    try {
      final CountryResponse response = await countryHttp.countries();
      _countries.addAll(response.countries);
      _defaultResponse = response.defaultResponse;
    } on HttpException catch (e) {
      appController.manageHttpError(e);
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
      final CountryResponse response = await countryHttp.countries(
        page: (_defaultResponse.pageNumber ?? 1) + 1,
      );
      _countries.clear();
      _countries.addAll(response.countries);
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
      final CountryResponse response = await countryHttp.countries(
        page: (_defaultResponse.pageNumber ?? 2) - 1,
      );
      _countries.clear();
      _countries.addAll(response.countries);
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
