import 'package:alex_astudillo_erp/src/ui/pages/home/home_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/home/home_page.dart';
import 'package:alex_astudillo_erp/src/ui/pages/sign_in/sign_in_binding.dart';
import 'package:alex_astudillo_erp/src/ui/pages/sign_in/sign_in_page.dart';
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
      ),
      GetPage(
        name: RouteNames.signIn,
        page: () => const SignInPage(),
        binding: const SignInBinding(),
      ),
    ];
  }
}
