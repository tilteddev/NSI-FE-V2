import 'package:flutter/material.dart';
import 'package:nsf_v2/presentation/screens/inventory/inventory_view_model.dart';
import 'package:nsf_v2/presentation/screens/inventory/web/components/inventory_item.dart';
import 'package:stacked/stacked.dart';

class InventoryScreenMobile extends StackedView<InventoryScreenViewModel> {
  const InventoryScreenMobile({super.key});

  @override
  Widget builder(BuildContext context, InventoryScreenViewModel viewModel, Widget? child) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox.shrink()
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