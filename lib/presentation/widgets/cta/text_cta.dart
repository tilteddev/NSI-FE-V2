import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCtaWidget extends StatelessWidget {
  final String label;
  final Widget icon;
  final VoidCallback onPressed;

  const TextCtaWidget({super.key, required this.label, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: GoogleFonts.dmSans(
            color: Color(0xFF2F73D2),
            fontSize: 11,
            fontWeight: FontWeight.w700,
          )
        ),
        InkWell(
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap:()=> onPressed(),
          child: icon
        )
      ]
    );
  }

}