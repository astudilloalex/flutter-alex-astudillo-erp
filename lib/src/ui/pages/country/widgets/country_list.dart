import 'package:alex_astudillo_erp/src/ui/pages/country/country_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/country/widgets/country_tile.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryList extends StatelessWidget {
  const CountryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CountryController>(
      builder: (controller) {
        if (controller.loading) return const CustomProgressIndicator();
        return Scrollbar(
          thumbVisibility: true,
          child: ListView.builder(
            itemCount: controller.countries.length,
            primary: false,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: CountryTile(controller.countries[index]),
              );
            },
          ),
        );
      },
    );
  }
}
