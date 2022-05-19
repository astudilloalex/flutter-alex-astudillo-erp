import 'package:alex_astudillo_erp/src/app/controllers/app_controller.dart';
import 'package:alex_astudillo_erp/src/ui/routes/route_names.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_design/responsive_design.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    Key? key,
    this.body,
  }) : super(key: key);

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    final AppController controller = Get.find<AppController>();
    return ResponsiveWidget(
      desktop: Scaffold(
        appBar: const CustomAppBar(),
        body: Row(
          children: [
            const CustomDrawer(),
            if (body != null) Expanded(child: body!),
          ],
        ),
      ),
      tablet: Scaffold(
        appBar: const CustomAppBar(),
        body: body,
        drawer: const CustomDrawer(),
        onDrawerChanged: (final bool open) {
          controller.drawerOpen = open;
        },
      ),
    );
  }
}
