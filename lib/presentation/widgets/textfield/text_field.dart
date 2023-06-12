import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsf_v2/application/data/themes/app_color.dart';

class TextFieldWidget extends StatelessWidget {
  final void Function(String? value) onChanged;
  final Widget label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? borderColor;

  final bool obscureText;
  const TextFieldWidget(
      {super.key,
      this.obscureText = false,
      this.prefixIcon,
      this.borderColor,
      this.suffixIcon,
      required this.onChanged,
      required this.label});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 500
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.neutralLightGrey,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? AppColor.iosDarkGrey,
              width: 0.5
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          label: label,
          prefixIcon: prefixIcon,
          prefixIconColor: AppColor.iosDarkGrey,
          suffixIcon: suffixIcon,
          suffixIconColor: AppColor.iosGrey,
        ),
        cursorColor: AppColor.blue,
        onChanged: onChanged,
        obscureText: obscureText
      ),
    );
  }
  
}