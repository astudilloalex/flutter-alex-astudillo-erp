import 'package:alex_astudillo_erp/src/ui/pages/company/widgets/company_info.dart';
import 'package:alex_astudillo_erp/src/ui/pages/company/widgets/company_person_info.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Scrollbar(
      thumbVisibility: true,
      child: CustomScrollView(
        primary: false,
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            sliver: SliverToBoxAdapter(
              child: Text(
                'company'.tr,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          const CompanyInfo(),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            sliver: SliverToBoxAdapter(
              child: Text(
                'legalReason'.tr,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          const CompanyPersonInfo(),
        ],
      ),
    ));
  }
}
