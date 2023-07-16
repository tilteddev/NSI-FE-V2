import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';
import 'package:nsf_v2/application/extensions/context_extension.dart';
import 'package:nsf_v2/domain/model/inventory/response/inventory_response.dart';
import 'package:nsf_v2/presentation/screens/inventory/inventory_view_model.dart';
import 'package:nsf_v2/presentation/screens/inventory/web/components/inventory_item.dart';
import 'package:nsf_v2/presentation/widgets/textfield/labelled_text_field.dart';
import 'package:nsf_v2/presentation/widgets/textfield/text_field.dart';

class InventoryContentWidget extends StatefulWidget {
  final InventoryScreenViewModel viewModel;
  final double contentWidth;

  const InventoryContentWidget({super.key, required this.viewModel, required this.contentWidth});
  
  @override
  State<StatefulWidget> createState() => InventoryContentWidgetState();
}
class InventoryContentWidgetState extends State<InventoryContentWidget> {
  final ScrollController _listScrollController = ScrollController();
  List<InventoryResponse> data = [];
  bool isScrollable = false;

  @override
  void initState() {
    super.initState();
    data = widget.viewModel.inventoryData;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if(_listScrollController.position.maxScrollExtent > 0){
        setState(() {
          isScrollable = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight,
      padding: EdgeInsets.symmetric(vertical: AppSpacing.s16), 
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // search bar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.s12),
            child: TextFieldWidget(
              maxWidth: widget.contentWidth,
              suffixIcon: Icon(size: 24, Icons.search, color: AppColor.primaryDarkerBlue),
              onChanged: (value) {
                setState(() {
                  data = widget.viewModel.search(value ?? '');
                });
              }, 
              label: Text(
                'Cari nama barang',
                style: GoogleFonts.dmSans(
                  color: AppColor.primaryLabelGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                )
              )
            )
          ),
          SizedBox(height: AppSpacing.s8),

          // listing
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.s12),
            child: Text(
              'Daftar Barang',
              style: GoogleFonts.dmSans(
                color: Color(0xFF212124),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ),
          SizedBox(height: AppSpacing.s2),
          Expanded(
            child: Scrollbar(
              thickness: 3,
              controller: _listScrollController,
              thumbVisibility: isScrollable,
              child: Container(
                color: AppColor.neutralWhite,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                  child: ListView.separated(
                    shrinkWrap: true,
                    controller: _listScrollController,
                    physics: const ClampingScrollPhysics(),
                    padding: EdgeInsets.all(AppSpacing.s12),
                    itemBuilder: (context, index) {
                      return InventoryItemWidget(
                        inventoryItem: data[index], 
                        viewModel: widget.viewModel, 
                        containerWidth: widget.contentWidth-12,
                      );
                    }, 
                    separatorBuilder: (context, index) {
                      return Container(height: AppSpacing.s12);
                    }, 
                    itemCount: data.length
                  )
                )
              )
            )
          )
        ],
      )
    );
  }

}