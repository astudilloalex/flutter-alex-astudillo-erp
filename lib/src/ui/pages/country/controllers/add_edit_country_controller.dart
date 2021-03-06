import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEditCountryController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController codeController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  final RxBool _active = RxBool(true);

  final Country? country = Get.arguments as Country?;

  @override
  void onInit() {
    super.onInit();
    if (country != null) {
      codeController.text = country!.code;
      nameController.text = country!.name;
      _active(country!.active);
    }
  }

  @override
  void onClose() {
    codeController.dispose();
    nameController.dispose();
    super.onClose();
  }

  void save() {
    if (!formKey.currentState!.validate()) return;
    final AppController appController = Get.find<AppController>();
    appController.showOverlay(() async {
      try {
        const CountryHttp http = CountryHttp();
        final BackendResponse<Country> response = country == null
            ? await http.save(
                Country(
                  code: codeController.text.trim(),
                  name: nameController.text.trim(),
                  active: _active.value,
                ),
              )
            : await http.update(
                country!.copyWith(
                  code: codeController.text.trim(),
                  name: nameController.text.trim(),
                  active: _active.value,
                ),
              );
        if (response.data.isNotEmpty) {
          Get.back(
            result: response.data.first.copyWith(
              creationDate: country?.creationDate,
            ),
          );
        } else {
          appController.showErrorSnackbar(response.defaultResponse.message);
        }
      } on Exception catch (e) {
        appController.manageError(e);
      }
    });
  }

  String? validateCode(final String? value) {
    if (value == null || value.trim().length != 2) return 'invalidCode'.tr;
    return null;
  }

  String? validateName(final String? value) {
    if (value == null || value.trim().length < 3) return 'invalidName'.tr;
    return null;
  }

  set active(final bool active) {
    _active(active);
  }

  bool get active => _active.value;
}
