import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAddEditDialog extends StatelessWidget {
  const CustomAddEditDialog({
    Key? key,
    this.content = const [],
    this.maxHeight = 500.0,
    this.maxWidth = 500.0,
    this.onSave,
    this.save = true,
    this.title = '',
  }) : super(key: key);

  final List<Widget> content;
  final double maxHeight;
  final double maxWidth;
  final VoidCallback? onSave;
  final bool save;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.close_outlined),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: content.length + 1,
                itemBuilder: (_, index) {
                  if (index == content.length) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Wrap(
                        alignment: WrapAlignment.end,
                        spacing: 16.0,
                        runSpacing: 16.0,
                        children: [
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              textStyle: GoogleFonts.poppins(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: onSave,
                            icon: Icon(
                              save
                                  ? Icons.save_outlined
                                  : Icons.update_outlined,
                            ),
                            label: Text(save ? 'save'.tr : 'update'.tr),
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              primary: Colors.redAccent,
                              textStyle: GoogleFonts.poppins(
                                fontSize: 16.0,
                              ),
                            ),
                            onPressed: () => Get.back(),
                            icon: const Icon(Icons.cancel_outlined),
                            label: Text('cancel'.tr),
                          ),
                        ],
                      ),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: content[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
