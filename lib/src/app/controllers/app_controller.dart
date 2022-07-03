import 'package:alex_astudillo_erp/src/ui/widgets/custom_progress_indicator.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/snackbars/error_snackbar.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  final StorageLocal localStorage = const StorageLocal();
  final StringBuffer _currentRoute = StringBuffer();

  bool drawerOpen = false;

  Company? company;
  Establishment? establishment;

  // @override
  // void onInit() {
  //   super.onInit();

  // }

  void changeRoute(final Routing routing) {
    _currentRoute.clear();
    _currentRoute.write(routing.current);
  }

  // void manageHttpError(final HttpException exception) {
  //   if (Get.isSnackbarOpen) Get.back();
  //   if (exception.prefix == 'Unauthorized request' &&
  //       Get.currentRoute != RouteNames.signIn) {
  //     Get.offAllNamed(RouteNames.signIn);
  //   }
  //   Get.showSnackbar(ErrorSnackbar(exception.message));
  // }

  void manageError(final Exception? e) {
    if (Get.isSnackbarOpen) Get.back();
    Get.showSnackbar(ErrorSnackbar(e.toString()));
  }

  void showErrorSnackbar(final String error) {
    if (Get.isSnackbarOpen) Get.back();
    Get.showSnackbar(ErrorSnackbar(error));
  }

  void showOverlay(final Future Function() asyncFunction) {
    Get.showOverlay(
      loadingWidget: const CustomProgressIndicator(),
      asyncFunction: asyncFunction,
    );
  }

  String get currentRoute => _currentRoute.toString();
}
