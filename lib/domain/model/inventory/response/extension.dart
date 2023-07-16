import 'package:nsf_v2/domain/model/inventory/response/inventory_response.dart';

extension InventoryResponseExtension on InventoryResponse {

  double sellPricePercentage() {
    double percentage = 0;
    if(buyPrice == null || sellPrice == null ) return percentage;
    int capital = int.parse(buyPrice!), expectedEarn = int.parse(sellPrice!);

    if(capital < expectedEarn) {
      percentage = (((capital - expectedEarn) / capital) * 100);
      percentage *= -1;
    } else if(expectedEarn > capital) {
      percentage = ((expectedEarn - capital) / capital) * 100;
    } else {
      percentage = 0;
    }
    return percentage;
  }

  double sellBulkPricePercentage() {
    double percentage = 0;
    if(buyPrice == null || sellPrice == null ) return percentage;
    int capital = int.parse(buyPrice!), expectedEarn = int.parse(sellBulkPrice!);

    if(capital < expectedEarn) {
      percentage = (((capital - expectedEarn) / capital) * 100);
      percentage *= -1;
    } else if(expectedEarn > capital) {
      percentage = ((expectedEarn - capital) / capital) * 100;
    } 
    return percentage;
  }
}

extension InventoryResponseListExtension on List<InventoryResponse> {
  
  double get capital => fold(0, (previousValue, element) => previousValue + int.parse(element.buyPrice ?? "0"));
  double get totalEarning => fold(0, (previousValue, element) => previousValue + int.parse(element.sellPrice ?? "0"));

  double earningPercentage() {
    double percentage = 0;
    if(isEmpty) return percentage;

    if(totalEarning < capital) {
      percentage = (((capital - totalEarning) / capital) * 100);
      percentage *= -1;
    } else if(totalEarning > capital) {
      percentage = ((totalEarning - capital) / capital) * 100;
    } 

    return percentage;
  }
}