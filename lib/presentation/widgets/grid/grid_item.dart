import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridItem extends StatelessWidget {
  final List<GridItemData> gridItemDatas;

  const GridItem({super.key, required this.gridItemDatas});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: gridItemDatas.map((e) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              e.label,
              style: GoogleFonts.sourceSansPro(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            e.widget
          ],
        );
      }).toList()
    );
  }

}

class GridItemData {
  final String label;
  final Widget widget;

  GridItemData({required this.label, required this.widget});
}