import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdvancedSettingsItem extends StatelessWidget {
  const AdvancedSettingsItem({
    Key? key,
    this.icon,
    required this.routeName,
    required this.title,
  }) : super(key: key);

  final IconData? icon;
  final String routeName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.0,
      height: 120.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: InkWell(
          onTap: () => Get.toNamed(routeName),
          borderRadius: BorderRadius.circular(16.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) Icon(icon),
                Expanded(
                  child: Center(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
