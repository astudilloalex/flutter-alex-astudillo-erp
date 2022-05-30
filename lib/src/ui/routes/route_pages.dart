import 'package:alex_astudillo_erp/src/app/middlewares/auth_middleware.dart';
import 'package:alex_astudillo_erp/src/ui/pages/advanced_settings/advanced_settings_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/advanced_settings/advanced_settings_page.dart';
import 'package:alex_astudillo_erp/src/ui/pages/company/company_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/company/company_page.dart';
import 'package:alex_astudillo_erp/src/ui/pages/country/country_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/country/country_page.dart';
import 'package:alex_astudillo_erp/src/ui/pages/home/home_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/home/home_page.dart';
import 'package:alex_astudillo_erp/src/ui/pages/security/security_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/security/security_page.dart';
import 'package:alex_astudillo_erp/src/ui/pages/sign_in/sign_in_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/sign_in/sign_in_page.dart';
import 'package:alex_astudillo_erp/src/ui/pages/splash/splash_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/splash/splash_page.dart';
import 'package:alex_astudillo_erp/src/ui/pages/unknown/unknown_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/unknown/unknown_page.dart';
import 'package:alex_astudillo_erp/src/ui/pages/user/user_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/user/user_page.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:get/get.dart';

class RoutePages {
  const RoutePages._();

  static List<GetPage<dynamic>> get all {
    return [
      GetPage(
        name: RouteNames.advancedSettings,
        page: () => const AdvancedSettingsPage(),
        binding: const AdvancedSettingsBinding(),
        middlewares: [AuthMiddleware()],
        children: [
          GetPage(
            name: RouteNames.country,
            page: () => const CountryPage(),
            binding: const CountryBinding(),
          ),
          GetPage(
            name: RouteNames.user,
            page: () => const UserPage(),
            binding: const UserBinding(),
          ),
        ],
      ),
      GetPage(
        name: RouteNames.company,
        page: () => const CompanyPage(),
        binding: const CompanyBinding(),
        middlewares: [AuthMiddleware()],
      ),
      GetPage(
        name: RouteNames.home,
        page: () => const HomePage(),
        binding: const HomeBinding(),
        middlewares: [AuthMiddleware()],
      ),
      GetPage(
        name: RouteNames.security,
        page: () => const SecurityPage(),
        binding: const SecurityBinding(),
        middlewares: [AuthMiddleware()],
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

  static GetPage<dynamic> get unknownRoute {
    return GetPage(
      name: RouteNames.unknown,
      page: () => const UnknownPage(),
      binding: const UnknownBinding(),
    );
  }
}
