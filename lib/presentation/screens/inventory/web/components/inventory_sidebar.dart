import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';
import 'package:nsf_v2/presentation/screens/inventory/inventory_view_model.dart';
import 'package:nsf_v2/presentation/widgets/hoverable/mouse_hoverable_widget.dart';
import 'package:nsf_v2/presentation/widgets/inkwell/inkwell_transparent.dart';
import 'package:nsf_v2/presentation/widgets/textfield/labelled_text_field.dart';
import 'package:nsf_v2/presentation/widgets/textfield/text_field.dart';

class InventorySidebarWidget extends StatelessWidget {
  final InventoryScreenViewModel viewModel;

  const InventorySidebarWidget({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OutlinedTextFieldWidget(
          maxHeight: 32,
          onChanged: (value) {
            
          }, 
          label: Text(
            'Nama barang',
            style: GoogleFonts.dmSans(
              color: AppColor.primaryLabelGrey,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            )
          )
        )
      ],
    );
  }

  List<Widget> _buildTabs() {
    List<Widget> tabs = [];

    for(int i =0 ; i < viewModel.tabs.length; i++) {
      tabs.add(
        Container(
          child: InkWell(
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            child: Text(
              viewModel.tabs[i],
              style: GoogleFonts.dmSans(
                fontSize: 12, 
                fontWeight: viewModel.selectedTabIndex == i  ? FontWeight.w500 : FontWeight.w400,
                color: viewModel.selectedTabIndex != i ? AppColor.iosLightGrey : AppColor.neutralWhite,
              )
            ),
          )
        )
      );
    }

    return tabs;
  }

  Widget _buildTabsContent() {
    return Column();
  }
}