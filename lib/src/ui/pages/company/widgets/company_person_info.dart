import 'package:alex_astudillo_erp/src/ui/pages/company/company_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompanyPersonInfo extends StatelessWidget {
  const CompanyPersonInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CompanyController controller = Get.find<CompanyController>();
    final List<Widget> data = [
      Row(
        children: [
          Expanded(child: Text('entityType'.tr)),
          Expanded(
            child: Obx(() {
              return Text(
                controller.company.person.juridicalPerson
                    ? 'society'.tr
                    : 'person'.tr,
              );
            }),
          ),
        ],
      ),
      const Divider(),
      Row(
        children: [
          Expanded(child: Text('identification'.tr)),
          Expanded(
            child: Obx(() {
              return Text(controller.company.person.idCard);
            }),
          ),
        ],
      ),
      const Divider(),
      Row(
        children: [
          Expanded(child: Text('email'.tr)),
          Expanded(
            child: Obx(() {
              return Text(controller.company.person.email ?? '-');
            }),
          ),
        ],
      ),
      const Divider(),
      Row(
        children: [
          Expanded(child: Text('phone'.tr)),
          Expanded(
            child: Obx(() {
              if (controller.loading) return Text('${'loading'.tr}...');
              return Text(
                controller.personPhone == null
                    ? '-'
                    : controller.personPhone!.number,
              );
            }),
          ),
        ],
      ),
    ];
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: data[index],
          );
        },
        childCount: data.length,
      ),
    );
  }
}
