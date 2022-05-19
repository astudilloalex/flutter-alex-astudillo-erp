import 'package:alex_astudillo_erp/src/app/middlewares/auth_middleware.dart';
import 'package:alex_astudillo_erp/src/ui/pages/advanced_settings/advanced_settings_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/advanced_settings/advanced_settings_page.dart';
import 'package:alex_astudillo_erp/src/ui/pages/home/home_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/home/home_page.dart';
import 'package:alex_astudillo_erp/src/ui/pages/sign_in/sign_in_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/sign_in/sign_in_page.dart';
import 'package:alex_astudillo_erp/src/ui/pages/splash/splash_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/splash/splash_page.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:get/get.dart';

class RoutePages {
  const RoutePages._();

  static List<GetPage<dynamic>> get all {
    return [
      GetPage(
        name: RouteNames.home,
        page: () => const HomePage(),
        binding: const HomeBinding(),
        middlewares: [
          AuthMiddleware(),
        ],
        children: [
          GetPage(
            name: RouteNames.advancedSettings,
            page: () => const AdvancedSettingsPage(),
            binding: const AdvancedSettingsBinding(),
          ),
        ],
      ),
      GetPage(
        name: RouteNames.signIn,
        page: () => const SignInPage(),
        binding: const SignInBinding(),
      ),
      GetPage(
        name: RouteNames.splash,
        page: () => const SplashPage(),
        binding: const SplashBinding(),
      ),
    ];
  }
}
