import 'package:flutter/material.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';

class OutlinedTextFieldWidget extends StatelessWidget {
  final void Function(String? value) onChanged;
  final Widget label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? borderColor;
  final double maxWidth;
  final double maxHeight;
  final bool obscureText;

  const OutlinedTextFieldWidget(
      {super.key,
      this.obscureText = false,
      this.prefixIcon,
      this.borderColor,
      this.suffixIcon,
      required this.onChanged,
      required this.label,
      this.maxWidth = 500,
      this.maxHeight = double.infinity
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(
            maxHeight: maxHeight,
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
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              label: label,
              prefixIcon: prefixIcon,
              prefixIconColor: AppColor.iosDarkGrey,
              suffixIcon: suffixIcon,
              suffixIconColor: AppColor.iosGrey,
              floatingLabelBehavior: FloatingLabelBehavior.never
            ),
            cursorColor: AppColor.blue,
            onChanged: onChanged,
            obscureText: obscureText,
          ),
        )
      ]
    );
  }
  
}