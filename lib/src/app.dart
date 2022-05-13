import 'package:alex_astudillo_erp/src/localization/app_localizations.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      fallbackLocale: const Locale('es', 'EC'),
      getPages: RoutePages.all,
      initialRoute: RouteNames.signIn,
      locale: Get.deviceLocale,
      translations: const AppLocalizations(),
    );
  }
}
