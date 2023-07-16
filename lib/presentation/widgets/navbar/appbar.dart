import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';
import 'package:nsf_v2/application/extensions/context_extension.dart';
import 'package:nsf_v2/application/extensions/native_extension.dart';
import 'package:nsf_v2/application/service/external_services.dart';
import 'package:nsf_v2/domain/model/inventory/response/extension.dart';
import 'package:nsf_v2/presentation/screens/inventory/inventory_view_model.dart';
import 'package:nsf_v2/presentation/widgets/card/title_description.dart';
import 'package:nsf_v2/presentation/widgets/markers/percentage_widget.dart';

class AppBarWidget extends StatelessWidget {
  final InventoryScreenViewModel viewModel;

  const AppBarWidget({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.s16, vertical: AppSpacing.s20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          AppBoxShadow.shadow()
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 32,
                width: 32,
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
              SizedBox(width: AppSpacing.s24),
              SizedBox(
                width: context.screenWidth/3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nusantara',
                      style: GoogleFonts.dmSans(
                        color: AppColor.primaryDarkerBlue,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      )
                    ),
                    Text(
                      'Manage inventory items',
                      style: GoogleFonts.dmSans(
                        color: AppColor.primaryLightGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )
                    ),
                  ]
                ),
              ),
            ],
          ),
           
          SizedBox(
            width: context.screenWidth/3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleDescriptionCardWidget(
                  title: 'TOTAL MODAL', 
                  description: viewModel.inventoryData.capital.toInt().toCurrency()
                ),
                SizedBox(width: AppSpacing.s24,),
                TitleDescriptionCardWidget(
                  title: 'PERKIRAAN UNTUNG', 
                  description: viewModel.inventoryData.totalEarning.toInt().toCurrency(),
                  suffix: PercentageWidget(percentage: '${viewModel.inventoryData.earningPercentage().toStringAsFixed(2)}\%', isUp: viewModel.percentage >= 0,)
                ),
              ],
            )
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  ExternalServices.instance.username,
                  style: GoogleFonts.dmSans(
                    color: AppColor.primaryPurple,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: AppSpacing.s10),
                CircleAvatar(
                  backgroundColor: AppColor.primaryPurple,
                  foregroundColor: AppColor.neutralWhite,
                  child: Text(ExternalServices.instance.username[0].toUpperCase(), style: GoogleFonts.dmSans(fontSize: 18),)
                )
              ],
            ),
          ), 
        ],
      ),
    );
  }

}