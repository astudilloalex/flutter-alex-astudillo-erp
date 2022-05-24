import 'package:alex_astudillo_erp/src/core/extensions/extensions.dart';
import 'package:alex_astudillo_erp/src/domain/entities/country.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryDetailsDialog extends StatelessWidget {
  const CountryDetailsDialog(this.country, {Key? key}) : super(key: key);

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.close_outlined),
              tooltip: 'close'.tr,
              splashRadius: 25.0,
            ),
            DataTable(
              columns: [
                DataColumn(label: Text('id'.tr)),
                DataColumn(label: Text('${country.id}')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('code'.tr)),
                    DataCell(Text(country.code)),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('name'.tr)),
                    DataCell(Text(country.name)),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('active'.tr)),
                    DataCell(Checkbox(value: country.active, onChanged: null)),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('creationDate'.tr)),
                    DataCell(Text('${country.creationDate?.format()}')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('updateDate'.tr)),
                    DataCell(Text('${country.updateDate?.format()}')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
