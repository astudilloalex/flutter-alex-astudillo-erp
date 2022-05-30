import 'package:alex_astudillo_erp/src/ui/pages/company/company_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CompanyController controller = Get.find<CompanyController>();
    final List<Widget> data = [
      Row(
        children: [
          Expanded(child: Text('id'.tr)),
          Expanded(
            child: Obx(() {
              return Text('${controller.company.id}');
            }),
          ),
        ],
      ),
      const Divider(),
      Row(
        children: [
          Expanded(child: Text('tradename'.tr)),
          Expanded(
            child: Obx(() {
              return Text(controller.company.tradename);
            }),
          ),
        ],
      ),
      const Divider(),
      Row(
        children: [
          Expanded(child: Text('specialTaxpayerCode'.tr)),
          Expanded(
            child: Obx(() {
              return Text(controller.company.specialTaxpayerCode ?? '-');
            }),
          ),
        ],
      ),
      const Divider(),
      Row(
        children: [
          Expanded(child: Text('keepAccounts'.tr)),
          Expanded(
            child: Obx(() {
              return Text(controller.company.keepAccounts ? 'yes'.tr : 'no'.tr);
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
