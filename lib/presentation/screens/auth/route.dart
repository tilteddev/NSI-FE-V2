import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nsf_v2/application/di/di.dart';
import 'package:nsf_v2/application/service/external_services.dart';
import 'package:nsf_v2/application/view/screen_builder.dart';
import 'package:nsf_v2/presentation/screens/auth/mobile/login_screen.dart';
import 'package:nsf_v2/presentation/screens/auth/desktop/login_screen.dart';
import 'package:nsf_v2/presentation/screens/auth/screens.dart';
import 'package:nsf_v2/presentation/screens/inventory/screens.dart';

class AuthRouteData extends GoRouteData {

  AuthRouteData();
  
  @override
  Widget build(BuildContext context, GoRouterState state) {

    if(ExternalServices.instance.accessToken.isNotEmpty) {
      return ScreenBuilder(
        desktopScreenWidget: InventoryScreenWeb(key: state.pageKey), 
        mobileScreenWidget: InventoryScreenMobile(key: state.pageKey),
        tabletScreenWidget: InventoryScreenTablet(key: state.pageKey)
      ).buildScreen(context);
    }

    return ScreenBuilder(
      desktopScreenWidget: LoginScreenWeb(key: state.pageKey), 
      mobileScreenWidget: LoginScreenMobile(key: state.pageKey),
      tabletScreenWidget: LoginScreenTablet(key: state.pageKey,)
    ).buildScreen(context);
  }
}