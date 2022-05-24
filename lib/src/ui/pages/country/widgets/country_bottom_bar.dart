import 'package:alex_astudillo_erp/src/ui/pages/country/country_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryBottomBar extends StatelessWidget {
  const CountryBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0.0,
      shape: const CircularNotchedRectangle(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: GetBuilder<CountryController>(
                builder: (controller) {
                  return Text(
                    controller.loading
                        ? 'loading'.tr
                        : '${controller.defaultResponse.offset} - ${controller.defaultResponse.lastElement} ${'of'.tr.toLowerCase()} ${controller.defaultResponse.totalElements}',
                    textAlign: TextAlign.end,
                  );
                },
              ),
            ),
            const SizedBox(width: 5.0),
            GetBuilder<CountryController>(
              builder: (controller) {
                return IconButton(
                  onPressed:
                      controller.loading || controller.defaultResponse.first
                          ? null
                          : controller.previousPage,
                  icon: const Icon(Icons.arrow_back_ios_outlined),
                  splashRadius: 25.0,
                );
              },
            ),
            const SizedBox(width: 5.0),
            GetBuilder<CountryController>(
              builder: (controller) {
                return IconButton(
                  onPressed:
                      controller.loading || controller.defaultResponse.last
                          ? null
                          : controller.nextPage,
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                  splashRadius: 25.0,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
