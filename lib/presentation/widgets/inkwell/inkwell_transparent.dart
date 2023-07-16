import 'package:flutter/material.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';

class InkWellWidget extends StatelessWidget {
  final Widget child;
  final double radius;
  final Color? containerColor;
  final Color? borderColor;
  final Color? hoverColor;
  final Color? normalColor;
  final Function onPressed;

  const InkWellWidget(
      {super.key,
      required this.child,
      this.radius = 10,
      this.containerColor,
      this.borderColor,
      this.hoverColor,
      this.normalColor,
      required this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap:() => onPressed(),
      child: Container(
        decoration: BoxDecoration(
          color: containerColor ?? AppColor.neutralWhite,
          boxShadow: [AppBoxShadow.shadow(blurRadius: 5)],
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: hoverColor ?? AppColor.neutralWhite
          )
        ),
        child: child
      )
    );
  }
  
}