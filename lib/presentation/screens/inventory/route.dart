import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nsf_v2/application/view/screen_builder.dart';
import 'package:nsf_v2/presentation/screens/inventory/web/inventory_screen.dart';

class InventoryRouteData extends GoRouteData {

  const InventoryRouteData();
  
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ScreenBuilder(
      desktopScreenWidget: InventoryScreenWeb(key: state.pageKey), 
      mobileScreenWidget: InventoryScreenWeb(key: state.pageKey)
    ).buildScreen(context);
  }
}