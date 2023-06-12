import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nsf_v2/application/extensions/context_extension.dart';

class ScreenBuilder {
  final Widget mobileScreenWidget;
  final Widget desktopScreenWidget;

  ScreenBuilder({required this.desktopScreenWidget, required this.mobileScreenWidget});

  Widget buildScreen(BuildContext context) {
    return context.screenWidth <= FormFactor.maxMobileWidth ? mobileScreenWidget : desktopScreenWidget;
  }
  
  dynamic build(BuildContext context, GoRouterState state) {
    if(context.screenWidth <= FormFactor.maxMobileWidth) {
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
