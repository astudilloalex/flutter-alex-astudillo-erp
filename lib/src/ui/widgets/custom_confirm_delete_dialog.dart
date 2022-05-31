import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomConfirmDeleteDialog extends StatelessWidget {
  const CustomConfirmDeleteDialog({
    Key? key,
    this.onConfirm,
    this.title = '',
  }) : super(key: key);

  final VoidCallback? onConfirm;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title, textAlign: TextAlign.center),
      content: Text('areYouSureRemove'.tr),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.redAccent,
            textStyle: GoogleFonts.poppins(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: onConfirm,
          child: Text('yes'.tr),
        ),
        const SizedBox(height: 5.0, width: 5.0),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: GoogleFonts.poppins(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () => Get.back(),
          child: Text('no'.tr),
        )
      ],
    );
  }
}
