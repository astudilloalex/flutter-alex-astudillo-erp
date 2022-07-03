import 'package:alex_astudillo_erp/src/ui/pages/country/country_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/country/widgets/add_edit_country/add_edit_country_dialog.dart';
import 'package:alex_astudillo_erp/src/ui/pages/country/widgets/country_details_dialog.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryTile extends StatelessWidget {
  const CountryTile(this.country, {Key? key}) : super(key: key);

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(country.code, overflow: TextOverflow.ellipsis),
        minLeadingWidth: 0.0,
        title: Text(country.name, overflow: TextOverflow.ellipsis),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () => Get.dialog(CountryDetailsDialog(country)),
              icon: const Icon(Icons.visibility_outlined),
              splashRadius: 20.0,
            ),
            IconButton(
              onPressed: () {
                Get.dialog<Country?>(
                  const AddEditCountryDialog(),
                  arguments: country,
                  barrierDismissible: false,
                ).then(Get.find<CountryController>().updateCountry);
              },
              icon: const Icon(Icons.edit_outlined),
              splashRadius: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
