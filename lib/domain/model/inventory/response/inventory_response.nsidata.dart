// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// NSIDataGenerator
// **************************************************************************

import 'package:nsf_v2/application/view/property.dart';
import 'package:nsf_v2/domain/model/inventory/response/inventory_response.dart';

extension ExtensionInventoryResponse on InventoryResponse {
  Map<String, Property> get properties => {
        "Kode Barang": Property<String?>(itemCode),
        "Nama Barang": Property<String?>(itemName),
        "Pemakaian": Property<String?>(usage),
        "Satuan": Property<String?>(pair),
        "Harga Modal": Property<String?>(buyPrice),
        "Jenis Modal": Property<String?>(buyPriceType),
        "Tanggal Modal": Property<String?>(buyPriceDate),
        "Harga Jual Ecer": Property<String?>(sellPrice),
        "Harga Jual Grosir": Property<String?>(sellBulkPrice),
        "Supplier": Property<String?>(supplier)
      };
}
