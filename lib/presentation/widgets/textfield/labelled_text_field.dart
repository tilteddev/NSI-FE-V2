import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';

class OutlinedTextFieldWidget extends StatelessWidget {
  final void Function(String? value) onChanged;
  final Widget? outlinedLabel;
  final String outlineLabelText;
  final String placeholderText;
  final Widget? placeholder;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? borderColor;
  final double maxWidth;
  final double maxHeight;
  final bool obscureText;
  final List<TextInputFormatter>? formatters;

  const OutlinedTextFieldWidget({
    super.key,
    this.obscureText = false,
    this.prefixIcon,
    this.borderColor,
    this.suffixIcon,
    required this.onChanged,
    this.outlinedLabel,
    required this.outlineLabelText,
    required this.placeholderText,
    this.placeholder,
    this.maxWidth = 500,
    this.maxHeight = double.infinity,
    this.formatters
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getLabel(),
        SizedBox(height: AppSpacing.s8),
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
              label: getPlaceholder(),
              prefixIcon: prefixIcon,
              prefixIconColor: AppColor.iosDarkGrey,
              suffixIcon: suffixIcon,
              suffixIconColor: AppColor.iosGrey,
              floatingLabelBehavior: FloatingLabelBehavior.never
            ),
            cursorColor: AppColor.blue,
            onChanged: (String? val) {
              onChanged(val);
            },
            obscureText: obscureText,
            inputFormatters: formatters,
          ),
        )
      ]
    );
  }

  Widget getLabel() {
    if(outlinedLabel != null) return outlinedLabel!;

    return Text(
      outlineLabelText,
      style: GoogleFonts.dmSans(
        color: AppColor.primaryBlack,
        fontSize: 12,
        fontWeight: FontWeight.w500
      )
    );
  } 

  Widget getPlaceholder() {
    if(placeholder != null) return placeholder!;

    return Text(
      placeholderText,
      style: GoogleFonts.dmSans(
        color: AppColor.primaryLabelGrey,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      )
    );
  } 
}