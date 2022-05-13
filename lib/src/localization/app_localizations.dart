import 'package:alex_astudillo_erp/src/localization/languages/app_es_ec.dart';
import 'package:get/get.dart';

class AppLocalizations implements Translations {
  const AppLocalizations();

  @override
  Map<String, Map<String, String>> get keys {
    return {
      'en_EC': appEsEc,
    };
  }
}
