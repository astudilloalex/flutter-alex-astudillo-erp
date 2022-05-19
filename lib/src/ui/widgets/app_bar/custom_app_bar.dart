import 'package:alex_astudillo_erp/src/ui/widgets/app_bar/widgets/app_bar_company_info.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/app_bar/widgets/app_bar_user_info.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design/responsive_design.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.title,
    this.toolbarHeight,
  }) : super(key: key);

  final Widget? title;
  final double? toolbarHeight;

  @override
  Widget build(BuildContext context) {
    const List<AppBarAction> actions = [
      AppBarAction(AppBarCompanyInfo(), showInAllScreens: true),
      AppBarAction(AppBarUserInfo(), showInAllScreens: true),
    ];
    return ResponsiveAppBar(
      toolbarHeight: toolbarHeight,
      actions: actions,
      actionSpace: 16.0,
      title: Image.asset(
        'assets/images/app_icon.png',
        height: 45.0,
        width: 45.0,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? kToolbarHeight);
}
