import 'package:alex_astudillo_erp/src/core/extensions/extensions.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivilegeDetailDialog extends StatelessWidget {
  const PrivilegeDetailDialog(this.privilege, {Key? key}) : super(key: key);

  final Privilege privilege;

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
                DataColumn(label: Text('${privilege.id}')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('name'.tr)),
                    DataCell(Text(privilege.name)),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('creationDate'.tr)),
                    DataCell(Text(privilege.creationDate?.format() ?? '-')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('updateDate'.tr)),
                    DataCell(Text(privilege.updateDate?.format() ?? '-')),
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
