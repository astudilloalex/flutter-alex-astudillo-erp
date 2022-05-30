import 'package:intl/intl.dart';

extension ParseToString on DateTime {
  String format() {
    return DateFormat('dd/MM/yyyy HH:mm').format(toLocal());
  }
}
