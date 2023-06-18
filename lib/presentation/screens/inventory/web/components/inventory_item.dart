import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsf_v2/application/data/themes/app_color.dart';
import 'package:nsf_v2/domain/model/inventory/response/inventory_response.dart';
import 'package:nsf_v2/presentation/widgets/grid/grid_item.dart';

class InventoryItemWidget extends StatefulWidget {
  final InventoryResponse inventoryItem;
  const InventoryItemWidget({super.key, required this.inventoryItem});
  
  @override
  InventoryItemWidgetState createState() => InventoryItemWidgetState();
}

class InventoryItemWidgetState extends State<InventoryItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.neutralLightGrey
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.inventoryItem.itemName!, 
            style: GoogleFonts.sourceSansPro(
              fontWeight: FontWeight.bold,
              fontSize: 16
            )
          ),
          const SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kode Barang: ', 
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.w600,
                  fontSize: 14
                )
              ),
              Text(
                widget.inventoryItem.itemCode!, 
                style: GoogleFonts.sourceSansPro(
                  fontSize: 14
                )
              ),
            ],
          ),
          const SizedBox(height: 4),
          GridItem(gridItemDatas: _buildGridItemData())
        ],
      )
    );
  }

  List<GridItemData> _buildGridItemData() {
    return[
      GridItemData(
        label: 'Satuan', 
        widget: Text(widget.inventoryItem.pair.toString())
      ),
      GridItemData(
        label: 'Pemakaian', 
        widget: Text(widget.inventoryItem.usage.toString(), maxLines: 2,)
      ),
      GridItemData(
        label: 'Supplier', 
        widget: Text(widget.inventoryItem.usage.toString(), maxLines: 2,)
      ),
    ];
  }
}