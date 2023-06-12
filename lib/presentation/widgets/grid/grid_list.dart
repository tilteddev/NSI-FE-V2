import 'package:flutter/material.dart';
import 'package:nsf_v2/application/extensions/context_extension.dart';

class FlexibleGridList extends StatelessWidget {
  final List<Widget> gridItems;
  final double horizontalPadding;

  const FlexibleGridList({super.key, required this.gridItems, required this.horizontalPadding});
  
  @override
  Widget build(BuildContext context) {
    int itemsPerRow = context.isMobile ? 2 : 3;
    double containerWidth = context.screenWidth / itemsPerRow;

    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: (gridItems.length / itemsPerRow).ceil(),
      itemBuilder: (context, index) {
        int startingIndex = index * itemsPerRow;
        int endingIndex = (startingIndex + itemsPerRow) < gridItems.length ? startingIndex + itemsPerRow : gridItems.length;
        
        List<Widget> rowChildren = [];

        for( int i = startingIndex; i < endingIndex; i++) {
          rowChildren.add(
            Container(
              width: containerWidth,
              padding: getPadding(startingIndex, endingIndex, i),
              child: gridItems[i]
            )
          );
        }
        return Row(
          children: rowChildren,
        );
      },
      separatorBuilder: (context, int index) {
        return const SizedBox(height: 10);
      },
    );
  }
  
  EdgeInsetsGeometry getPadding(int startIndex, int endIndex, int currentIndex) {
    if(currentIndex == startIndex) {
      return EdgeInsets.symmetric(horizontal: horizontalPadding);
    } 

    return EdgeInsets.only(right: horizontalPadding);
  }
}