import 'package:flutter/material.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';

class PercentageWidget extends StatelessWidget {
  final bool isUp;
  final String percentage;

  const PercentageWidget({super.key, required this.percentage, this.isUp = true});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 16,
          height: 14,
          decoration: ShapeDecoration(
            color: isUp ? AppColor.primaryGreen : AppColor.primaryRed,
            shape: StarBorder.polygon(sides: 3, rotation: isUp ? 0: 180),
          ),
        ),
        const SizedBox(width: 2),
        SizedBox(
          height: 13,
          child: Text(
            percentage,
            style: TextStyle(
              color: isUp ? AppColor.primaryGreen : AppColor.primaryRed,
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              letterSpacing: 0.96,
            ),
          ),
        )
      ],
    );
  }
  
}