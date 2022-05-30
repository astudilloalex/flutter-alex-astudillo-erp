import 'package:alex_astudillo_erp/src/domain/entities/security/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  const UserTile(this.user, {Key? key}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        title: Row(
          children: [
            Expanded(child: Text(user.username)),
            Expanded(child: Text(user.person.firstName ?? '-')),
            Expanded(child: Text(user.person.lastName ?? '-')),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}
