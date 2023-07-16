import 'package:flutter/material.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';

class TextFieldWidget extends StatelessWidget {
  final void Function(String? value) onChanged;
  final Widget label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? borderColor;
  final double maxWidth;

  final bool obscureText;
  const TextFieldWidget(
      {super.key,
      this.obscureText = false,
      this.prefixIcon,
      this.borderColor,
      this.suffixIcon,
      required this.onChanged,
      required this.label,
      this.maxWidth = 500
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: maxWidth,
      ),
      decoration: ShapeDecoration(
        color: AppColor.neutralWhite,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width:1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: AppColor.fromHex('#D9DBE0'),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        shadows: [
          AppBoxShadow.shadow(blurRadius: 5)
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          label: label,
          prefixIcon: prefixIcon,
          prefixIconColor: AppColor.iosDarkGrey,
          suffixIcon: suffixIcon,
          suffixIconColor: AppColor.iosGrey,
          floatingLabelBehavior: FloatingLabelBehavior.never
        ),
        cursorColor: AppColor.blue,
        onChanged: onChanged,
        obscureText: obscureText
      ),
    );
  }
  
}