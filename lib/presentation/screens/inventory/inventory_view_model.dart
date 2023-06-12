// ignore_for_file: use_build_context_synchronously

import 'package:go_router/go_router.dart';
import 'package:nsf_v2/application/domain/api_state.dart';
import 'package:nsf_v2/application/di.dart';
import 'package:nsf_v2/application/view/screen_base_view_model.dart';
import 'package:nsf_v2/domain/model/inventory/response/inventory_response.dart';
import 'package:nsf_v2/domain/repository/inventory/inventory_repository.dart';

class InventoryScreenViewModel extends ScreenBaseViewModel {
  final InventoryRepository _inventoryRepository = getIt.get<InventoryRepository>();
  List<InventoryResponse> inventoryData = [];

  InventoryScreenViewModel(super.context);

  void loadData() async {
    ApiState<List<InventoryResponse>> response = await _inventoryRepository.getInventoryData();
    if(response.isError == false) {
      inventoryData = response.data!;
      notifyListeners();
    } else if(context.mounted == true){
      context.replaceNamed('auth_screen');
      return;
    }
  }
}