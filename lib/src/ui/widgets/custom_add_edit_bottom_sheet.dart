import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAddEditBottomSheet extends StatelessWidget {
  const CustomAddEditBottomSheet({
    Key? key,
    this.content = const [],
    this.onSave,
    this.save = true,
    this.title = '',
  }) : super(key: key);

  final List<Widget> content;
  final VoidCallback? onSave;
  final bool save;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: Column(
        children: [
          Row(
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
          Expanded(
            child: ListView.builder(
              itemCount: content.length + 1,
              itemBuilder: (_, index) {
                if (index == content.length) {
                  return Row(
                    children: [
                      TextButton.icon(
                        onPressed: onSave,
                        icon: Icon(
                          save ? Icons.save_outlined : Icons.update_outlined,
                        ),
                        label: Text(save ? 'save'.tr : 'update'.tr),
                      ),
                      TextButton.icon(
                        onPressed: onSave,
                        icon: const Icon(Icons.cancel_outlined),
                        label: Text('cancel'.tr),
                      ),
                    ],
                  );
                }
                return content[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
