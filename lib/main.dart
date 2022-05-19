import 'package:alex_astudillo_erp/src/app/app.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const App());
}
