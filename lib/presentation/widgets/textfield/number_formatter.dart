import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class TextInputNumberFormatter extends TextInputFormatter {
  String format = "###,###";

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    NumberFormat formatter = NumberFormat(format, "en_US");
    return const TextEditingValue()
      .copyWith(
        text: formatter.format(int.parse(newValue.text.replaceAll(',',''))
      )
    );
  }

}