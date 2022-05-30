import 'package:alex_astudillo_erp/src/app/app_binding.dart';
import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/localization/app_localizations.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_pages.dart';
import 'package:alex_astudillo_erp/src/ui/theme/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      fallbackLocale: const Locale('es', 'EC'),
      getPages: RoutePages.all,
      initialBinding: const AppBinding(),
      routingCallback: (final Routing? routing) {
        if (routing != null) Get.find<AppController>().changeRoute(routing);
      },
      initialRoute: RouteNames.splash,
      locale: Get.deviceLocale,
      // scrollBehavior: const MaterialScrollBehavior().copyWith(
      //   dragDevices: {
      //     PointerDeviceKind.touch,
      //     PointerDeviceKind.mouse,
      //     PointerDeviceKind.stylus,
      //     PointerDeviceKind.unknown,
      //   },
      // ),
      theme: AppThemeData.light,
      translations: const AppLocalizations(),
      unknownRoute: RoutePages.unknownRoute,
    );
  }
}
