import 'package:alex_astudillo_erp/src/ui/pages/user/user_controller.dart';
import 'package:alex_astudillo_erp/src/ui/pages/user/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GetBuilder<UserController>(
            builder: (controller) {
              return ListView.builder(
                primary: false,
                itemCount: controller.users.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: UserTile(controller.users[index]),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
