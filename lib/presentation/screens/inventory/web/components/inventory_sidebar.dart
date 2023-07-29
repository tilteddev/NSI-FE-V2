import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsf_v2/application/data/themes/app_font.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';
import 'package:nsf_v2/application/extensions/context_extension.dart';
import 'package:nsf_v2/presentation/screens/inventory/inventory_view_model.dart';
import 'package:nsf_v2/presentation/widgets/hoverable/mouse_hoverable_widget.dart';
import 'package:nsf_v2/presentation/widgets/inkwell/inkwell_transparent.dart';
import 'package:nsf_v2/presentation/widgets/textfield/labelled_text_field.dart';
import 'package:nsf_v2/presentation/widgets/textfield/number_formatter.dart';
import 'package:nsf_v2/presentation/widgets/textfield/text_field.dart';

class InventorySidebarWidget extends StatelessWidget {
  final InventoryScreenViewModel viewModel;
  final BoxConstraints constraints;
  const InventorySidebarWidget({super.key, required this.viewModel, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.s12),
      decoration: ShapeDecoration(
        color: AppColor.neutralWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          AppBoxShadow.shadow(blurRadius: 5)
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: AppSpacing.s12),
            child: Text(
              'Informasi Barang',
              style: AppFont.bodyText.extraBold()
            )
          ),
          OutlinedTextFieldWidget(
            maxHeight: 32,
            maxWidth: constraints.maxWidth,
            onChanged: (value) {
              
            }, 
            outlineLabelText: 'Nama Barang',
            placeholderText: 'SLEEVE INJECTOR BK (ME030855) 6D14-16',
          ),
          SizedBox(height: AppSpacing.s12),
          OutlinedTextFieldWidget(
            maxHeight: 32,
            maxWidth: constraints.maxWidth,
            onChanged: (value) {
              
            }, 
            outlineLabelText: 'Kode Barang',
            placeholderText: '1160-250-PROHEX-GEMBOK KNG.25MM',
          ),
          SizedBox(height: AppSpacing.s12),
          OutlinedTextFieldWidget(
            maxHeight: 32,
            maxWidth: constraints.maxWidth,
            onChanged: (value) {
              
            }, 
            outlineLabelText: 'Supplier',
            placeholderText: 'PT. CELINDO MULTI KARYA SBY',
          ),
          SizedBox(height: AppSpacing.s12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OutlinedTextFieldWidget(
                maxHeight: 32,
                maxWidth: constraints.maxWidth * 0.5,
                onChanged: (value) {
                  
                }, 
                outlineLabelText: 'Pemakaian',
                placeholderText: 'MITS. FUSO/FIGHTER 6D15/14',
              ),
              SizedBox(width: AppSpacing.s12),
              OutlinedTextFieldWidget(
                maxHeight: 32,
                maxWidth: constraints.maxWidth  * 0.3,
                onChanged: (value) {
                  
                }, 
                outlineLabelText: 'Satuan',
                placeholderText: 'Gross ( 144 pcs )',
              ),
            ],
          ),
          SizedBox(height: AppSpacing.s12),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: AppSpacing.s12),
            child: Text(
              'Harga',
              style: AppFont.bodyText.extraBold()
            )
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OutlinedTextFieldWidget(
                maxHeight: 32,
                maxWidth: (constraints.maxWidth - 48) / 3,
                onChanged: (value) {
                  
                }, 
                outlineLabelText: 'Modal',
                placeholderText: '1,000,000,000',
                formatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  TextInputNumberFormatter()
                ],
              ),
              SizedBox(width: AppSpacing.s12),
              OutlinedTextFieldWidget(
                maxHeight: 32,
                maxWidth: (constraints.maxWidth - 48) / 3,
                onChanged: (value) {
                  
                }, 
                outlineLabelText: 'Jenis Modal',
                placeholderText: 'PAKET 210 PCS , DISC 30%',
              ),
              SizedBox(width: AppSpacing.s12),
              OutlinedTextFieldWidget(
                maxHeight: 32,
                maxWidth: (constraints.maxWidth - 48) / 3,
                onChanged: (value) {
                  
                }, 
                outlineLabelText: 'Tanggal Modal',
                placeholderText: '25 July 2023',
              ),
            ],
          ),
          SizedBox(height: AppSpacing.s12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OutlinedTextFieldWidget(
                maxHeight: 32,
                maxWidth: constraints.maxWidth * 0.5,
                onChanged: (value) {
                  
                }, 
                outlineLabelText: 'Pemakaian',
                placeholderText: 'MITS. FUSO/FIGHTER 6D15/14',
              ),
              SizedBox(width: AppSpacing.s12),
              OutlinedTextFieldWidget(
                maxHeight: 32,
                maxWidth: constraints.maxWidth  * 0.3,
                onChanged: (value) {
                  
                }, 
                outlineLabelText: 'Satuan',
                placeholderText: 'Gross ( 144 pcs )',
              ),
            ],
          ),
        ],
      )
    );
  }

}