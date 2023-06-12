import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nsf_v2/application/di.dart';
import 'package:nsf_v2/application/service/external_services.dart';
import 'package:nsf_v2/application/view/screen_builder.dart';
import 'package:nsf_v2/presentation/screens/auth/mobile/login_screen.dart';
import 'package:nsf_v2/presentation/screens/auth/web/login_screen.dart';
import 'package:nsf_v2/presentation/screens/inventory/screens.dart';

class AuthRouteData extends GoRouteData {
  final ExternalServices _externalServices = getIt.get<ExternalServices>();

  AuthRouteData();
  
  @override
  Widget build(BuildContext context, GoRouterState state) {

    if(_externalServices.accessToken.isNotEmpty) {
      return ScreenBuilder(
        desktopScreenWidget: InventoryScreenWeb(key: state.pageKey), 
        mobileScreenWidget: InventoryScreenMobile(key: state.pageKey)
      ).buildScreen(context);
    }

    return ScreenBuilder(
      desktopScreenWidget: LoginScreenWeb(key: state.pageKey), 
      mobileScreenWidget: LoginScreenMobile(key: state.pageKey)
    ).buildScreen(context);
  }
}