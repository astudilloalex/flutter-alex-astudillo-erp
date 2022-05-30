import 'package:alex_astudillo_erp/src/ui/widgets/app_bar/widgets/app_bar_company_info.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/app_bar/widgets/app_bar_user_info.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design/responsive_design.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.leading,
    this.title,
    this.toolbarHeight,
  }) : super(key: key);

  final Widget? leading;
  final Widget? title;
  final double? toolbarHeight;

  @override
  Widget build(BuildContext context) {
    const List<AppBarAction> actions = [
      AppBarAction(AppBarCompanyInfo(), showInAllScreens: true),
      AppBarAction(AppBarUserInfo(), showInAllScreens: true),
    ];
    return ResponsiveAppBar(
      title: title,
      toolbarHeight: toolbarHeight,
      actions: actions,
      actionSpace: 16.0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? kToolbarHeight);
}
