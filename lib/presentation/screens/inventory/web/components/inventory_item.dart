import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsf_v2/application/data/themes/app_color.dart';
import 'package:nsf_v2/domain/model/inventory/response/inventory_response.dart';

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
            widget.inventoryItem.itemName, 
            style: GoogleFonts.sourceSansPro(
              fontWeight: FontWeight.bold,
              fontSize: 16
            )
          ),
          const SizedBox(height: 4),
          Text(
            widget.inventoryItem.itemCode, 
            style: GoogleFonts.sourceSansPro(
              fontWeight: FontWeight.w500,
              fontSize: 14
            )
          ),
        ],
      )
    );
  }

}