import 'package:flutter/material.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';
import 'package:nsf_v2/application/extensions/context_extension.dart';
import 'package:nsf_v2/presentation/screens/inventory/inventory_view_model.dart';
import 'package:nsf_v2/presentation/screens/inventory/web/components/inventory_content.dart';
import 'package:nsf_v2/presentation/screens/inventory/web/components/inventory_sidebar.dart';
import 'package:nsf_v2/presentation/widgets/navbar/appbar.dart';
import 'package:stacked/stacked.dart';

class InventoryScreenWeb extends StackedView<InventoryScreenViewModel> {
  const InventoryScreenWeb({super.key});

  @override
  Widget builder(BuildContext context, InventoryScreenViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: AppColor.neutralWhite,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBarWidget(viewModel: viewModel),
          Expanded(
            child: _buildBody(context, viewModel)
          )
        ]
      )
    );
  }

  Widget _buildBody(BuildContext context, InventoryScreenViewModel viewModel) {
    if(viewModel.loading) return const SizedBox.shrink();

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: context.screenWidth*0.6,
          child: InventoryContentWidget(
            viewModel: viewModel, 
            contentWidth: context.screenWidth*0.6
          )
        ),
        SizedBox(width: AppSpacing.s12),
        Container(width: 1, color: AppColor.strokeLightGrey,),  
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.s16),
            child: InventorySidebarWidget(viewModel: viewModel,)
          ),
        )
      ],
    );
  }

  @override
  InventoryScreenViewModel viewModelBuilder(BuildContext context) => InventoryScreenViewModel(context);

  @override
  void onViewModelReady(InventoryScreenViewModel viewModel) {
    viewModel.loadData();
  }
  
}