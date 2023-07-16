import 'package:flutter/material.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';

class TitleDescriptionCardWidget extends StatelessWidget {
  final String title;
  final String description; 
  final Widget? suffix;

  const TitleDescriptionCardWidget({super.key, required this.title, required this.description, this.suffix});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: ShapeDecoration(
        color: AppColor.neutralWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          AppBoxShadow.shadow()
        ],
      ),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColor.primaryDarkerBlue,
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  color: AppColor.primaryLighterBlack,
                  fontSize: 16,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(width: AppSpacing.s2),
          suffix ?? const SizedBox.shrink()
        ]
      )
    );
  }
}