import 'package:flutter/material.dart';
import 'package:nsf_v2/presentation/screens/inventory/inventory_view_model.dart';
import 'package:nsf_v2/presentation/screens/inventory/web/components/inventory_item.dart';
import 'package:nsf_v2/presentation/widgets/grid/grid_list.dart';
import 'package:stacked/stacked.dart';

class InventoryScreenWeb extends StackedView<InventoryScreenViewModel> {
  const InventoryScreenWeb({super.key});

  @override
  Widget builder(BuildContext context, InventoryScreenViewModel viewModel, Widget? child) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: FlexibleGridList(
          parentHorizontalPadding: 0,
          horizontalPadding: 10,
          gridItems: viewModel.inventoryData.map((e) => InventoryItemWidget(inventoryItem: e),).toList()
        )
      )
    );
  }

  @override
  InventoryScreenViewModel viewModelBuilder(BuildContext context) => InventoryScreenViewModel(context);

  @override
  void onViewModelReady(InventoryScreenViewModel viewModel) {
    viewModel.loadData();
  }
}