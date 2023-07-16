import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nsf_v2/application/extensions/context_extension.dart';

class ScreenBuilder {
  final Widget mobileScreenWidget;
  final Widget desktopScreenWidget;
  final Widget tabletScreenWidget;

  ScreenBuilder({required this.desktopScreenWidget, required this.mobileScreenWidget, required this.tabletScreenWidget});

  Widget buildScreen(BuildContext context) {
    if(context.screenWidth <= FormFactor.maxMobileWidth) {
      return mobileScreenWidget;
    } else if(context.screenWidth <= FormFactor.maxTabletWidth) {
      return tabletScreenWidget;
    }
    
    return desktopScreenWidget;
  }
  
  dynamic build(BuildContext context, GoRouterState state) {

    if(context.screenWidth > FormFactor.maxMobileWidth) {
      return CustomTransitionPage<void>(
        key: state.pageKey,
        child: desktopScreenWidget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
              position: Tween<Offset>(
              begin: const Offset(0, 0),
              end: Offset.zero
            ).animate(animation),
            child: child,
          );
        },
      );
    }

    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: desktopScreenWidget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
            position: Tween<Offset>(
            begin: const Offset(-1.0, 0),
            end: Offset.zero
          ).animate(animation),
          child: child,
        );
      },
    );
  }

}
