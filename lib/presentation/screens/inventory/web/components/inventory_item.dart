import 'package:analyzer/dart/element/type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsf_v2/application/data/themes/app_color.dart';
import 'package:nsf_v2/application/data/themes/app_spacing.dart';
import 'package:nsf_v2/application/extensions/native_extension.dart';
import 'package:nsf_v2/domain/model/inventory/response/inventory_response.dart';
import 'package:nsf_v2/domain/model/inventory/response/inventory_response.nsidata.dart';
import 'package:nsf_v2/presentation/screens/inventory/inventory_view_model.dart';
import 'package:nsf_v2/presentation/widgets/cta/text_cta.dart';

class InventoryItemWidget extends StatefulWidget {
  final InventoryResponse inventoryItem;
  final InventoryScreenViewModel viewModel;
  final double containerWidth;
  final bool includePriceDetails;

  const InventoryItemWidget({super.key, required this.inventoryItem, required this.viewModel, this.containerWidth = 712, this.includePriceDetails = true});
  
  @override
  InventoryItemWidgetState createState() => InventoryItemWidgetState();
}

class InventoryItemWidgetState extends State<InventoryItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.s12),
      height: 90,
      decoration: ShapeDecoration(
        color: AppColor.neutralWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          AppBoxShadow.shadow(blurRadius: 5)
        ],
      ),
      child: widget.includePriceDetails ? _buildWithPriceDetails() : _buildWithoutPriceDetails()
    );
  }

  Widget _buildWithoutPriceDetails() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.inventoryItem.itemName ?? '',
          style: GoogleFonts.dmSans(
            color: AppColor.primaryBlack,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 3,
        ),
        Text(
          widget.inventoryItem.itemCode ?? '',
          style: GoogleFonts.dmSans(
            color: AppColor.primaryLightGrey,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          widget.inventoryItem.usage ?? '',
          style: GoogleFonts.dmSans(
            color: AppColor.primaryLightGrey,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          widget.inventoryItem.supplier ?? '',
          style: GoogleFonts.dmSans(
            color: AppColor.primaryLightGrey,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildWithPriceDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: widget.containerWidth * 0.3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.inventoryItem.itemName ?? '',
                style: GoogleFonts.dmSans(
                  color: AppColor.primaryBlack,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 3,
              ),
              Text(
                widget.inventoryItem.itemCode ?? '',
                style: GoogleFonts.dmSans(
                  color: AppColor.primaryLightGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                widget.inventoryItem.usage ?? '',
                style: GoogleFonts.dmSans(
                  color: AppColor.primaryLightGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                widget.inventoryItem.supplier ?? '',
                style: GoogleFonts.dmSans(
                  color: AppColor.primaryLightGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ),
        SizedBox(width: AppSpacing.s8),
        // right handside
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: ((widget.containerWidth* 0.6) /3)-32,
                    child: _buildPriceConfigWidget('Modal', widget.inventoryItem.buyPrice!.toCurrency())
                  ),
                  SizedBox(width: AppSpacing.s16,),
                  SizedBox(
                    width: ((widget.containerWidth* 0.6) /3)-30,
                    child: _buildPriceConfigWidget('Jual Ecer', widget.inventoryItem.sellPrice!.toCurrency())
                  ),
                  SizedBox(width: AppSpacing.s16,),
                  SizedBox(
                    width: ((widget.containerWidth* 0.6) /3)-32,
                    child: _buildPriceConfigWidget('Jual Grosir', widget.inventoryItem.sellBulkPrice!.toCurrency())
                  )                    
                ]
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextCtaWidget(
                          label: 'Cek info barang', 
                          icon: Icon(
                            Icons.navigate_next, 
                            color: AppColor.primaryDarkerBlue,
                            size: 16,
                          ), 
                          onPressed: () {

                          }
                        )
                      ]
                    )
                  ],
                )
              )
            ]
          )
        )
      ],
    );
  }
  
  Widget _buildPriceConfigWidget(String label, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.dmSans(
            color: Color(0xFF212124),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.dmSans(
            color: AppColor.primaryLightGrey,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}