import 'package:alex_astudillo_erp/src/ui/pages/user/user_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/user/widgets/user_list.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/paginated/bottom_paginated_info.dart';
import 'package:alex_astudillo_erp/src/ui/widgets/scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: Text('users'.tr),
      ),
      body: const UserList(),
      bottomNavigationBar: GetBuilder<UserController>(
        builder: (controller) {
          return BottomPaginatedInfo(
            controller.defaultResponse,
            loading: controller.loading,
            onNext: () {},
            onPrevious: () {},
          );
        },
      ),
    );
  }
}
