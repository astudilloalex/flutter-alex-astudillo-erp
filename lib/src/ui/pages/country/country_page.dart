import 'package:alex_astudillo_erp/src/domain/entities/country.dart';
import 'package:alex_astudillo_erp/src/ui/pages/country/country_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/country/widgets/add_edit_country/add_edit_country_dialog.dart';
import 'package:alex_astudillo_erp/src/ui/pages/country/widgets/country_bottom_bar.dart';
import 'package:alex_astudillo_erp/src/ui/pages/country/widgets/country_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_design/responsive_design.dart';

class CountryPage extends StatelessWidget {
  const CountryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveAppBar(
        title: Text('countries'.tr),
      ),
      body: const CountryList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.dialog<Country?>(
            const AddEditCountryDialog(),
            barrierDismissible: false,
          ).then(Get.find<CountryController>().addCountry);
        },
        child: const Icon(Icons.add_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      bottomNavigationBar: const CountryBottomBar(),
    );
  }
}
