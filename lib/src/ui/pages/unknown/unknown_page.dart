import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_design/responsive_design.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveAppBar(
        elevation: 0.0,
        title: Text('pageNotFound'.tr),
        leading: IconButton(
          onPressed: () => Get.offAllNamed(RouteNames.home),
          icon: const Icon(Icons.home_outlined),
          tooltip: 'home'.tr,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'thePageDoesNotExist'.tr,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton.icon(
              onPressed: () => Get.offAllNamed(RouteNames.home),
              icon: const Icon(Icons.home_outlined),
              label: Text('home'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
