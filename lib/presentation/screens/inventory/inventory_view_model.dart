// ignore_for_file: use_build_context_synchronously

import 'package:go_router/go_router.dart';
import 'package:nsf_v2/application/domain/api_state.dart';
import 'package:nsf_v2/application/di/di.dart';
import 'package:nsf_v2/application/view/screen_base_view_model.dart';
import 'package:nsf_v2/domain/model/inventory/response/extension.dart';
import 'package:nsf_v2/domain/model/inventory/response/inventory_response.dart';
import 'package:nsf_v2/domain/repository/inventory/inventory_repository.dart';

class InventoryScreenViewModel extends ScreenBaseViewModel {
  final InventoryRepository _inventoryRepository = getIt.get<InventoryRepository>();
  bool loading = true;
  double percentage = 0;
  InventoryResponse? _selectedData;

  List<InventoryResponse> inventoryData = [];

  InventoryScreenViewModel(super.context);
  
  int selectedTabIndex = 0;

  List<String> tabs = ['Tambah / Update Barang','Ganti Password'];

  void setSelectedData(InventoryResponse? inventoryResponse) {
    _selectedData = inventoryResponse;
    notifyListeners();
  }

  void setTab(int index) {
    selectedTabIndex = index;
    notifyListeners();
  }

  InventoryResponse? get selectedData => _selectedData;

  void loadData() async {
    ApiState<List<InventoryResponse>> response = await _inventoryRepository.getInventoryData();
    if(response.isError == false) {
      inventoryData = response.data!;
      percentage = inventoryData.earningPercentage();
      loading = false;
      notifyListeners();
    } else if(context.mounted == true){
      loading = false;
      context.replaceNamed('auth_screen');
      return;
    }
  }

  List<InventoryResponse> search(String keyword) {
    if(keyword.isEmpty) return inventoryData;

    return inventoryData.where(
      (element) {
        return element.itemName!.toString().toLowerCase().contains(keyword.toString().toLowerCase()) || 
        element.itemCode!.toString().toLowerCase().contains(keyword.toString().toLowerCase());
      }).toList();
  }
}