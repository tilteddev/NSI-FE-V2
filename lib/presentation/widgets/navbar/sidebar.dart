import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';

class SideNavigationBarWidget extends StatelessWidget {
  const SideNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.s2, vertical: AppSpacing.s26),
      decoration: BoxDecoration(
        color: AppColor.neutralWhite,
        boxShadow: [
          AppBoxShadow.shadow()
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            padding: EdgeInsets.all(AppSpacing.s2),
            decoration: ShapeDecoration(
              color: AppColor.primaryBlack,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
              shadows: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: SvgPicture.asset('assets/svg/logo.svg')
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset('assets/svg/logout.svg')
              ]
            )
        
          )
        ],
      ),
    );
  }

}