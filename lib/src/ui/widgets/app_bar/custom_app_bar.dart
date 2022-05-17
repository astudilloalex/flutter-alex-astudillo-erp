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
    return ResponsiveAppBar(
      toolbarHeight: toolbarHeight,
      leading: Center(
        child: Image.asset(
          'assets/images/app_icon.png',
          height: 45.0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? kToolbarHeight);
}
