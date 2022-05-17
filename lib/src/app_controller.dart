import 'package:alex_astudillo_erp/src/core/exceptions/http_exceptions.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/custom_progress_indicator.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/snackbars/error_snackbar.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  void manageHttpError(final HttpException exception) {
    if (Get.isSnackbarOpen) Get.back();
    if (exception.prefix == 'Unauthorized request' &&
        Get.currentRoute != RouteNames.signIn) {
      Get.offAllNamed(RouteNames.signIn);
    }
    Get.showSnackbar(ErrorSnackbar(exception.message));
  }

  void manageError(final Exception e) {
    if (Get.isSnackbarOpen) Get.back();
    Get.showSnackbar(ErrorSnackbar(e.toString()));
  }

  void showOverlay(final Future Function() asyncFunction) {
    Get.showOverlay(
      loadingWidget: const CustomProgressIndicator(),
      asyncFunction: asyncFunction,
    );
  }
}
