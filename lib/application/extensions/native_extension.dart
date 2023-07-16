import 'package:intl/intl.dart';

var formatter = NumberFormat('###,###,##');

extension IntExtension on int {
  String toCurrency() {
    return 'Rp. ${formatter.format(this).toString()}';
  }
}

extension StringExtension on String {
  String toCurrency() {
    return int.parse(this).toCurrency();
  }
}