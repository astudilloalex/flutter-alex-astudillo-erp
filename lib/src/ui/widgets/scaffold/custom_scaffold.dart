import 'package:alex_astudillo_erp/src/ui/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/sidebar/custom_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design/responsive_design.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      appBar: appBar ?? const CustomAppBar(),
      sidebar: const CustomSidebar(),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
    );
  }
}
