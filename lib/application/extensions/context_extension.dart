import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension BuildContextExtras on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;

  // go router extras
  void pop(String fallbackUrl) {
    if(GoRouter.of(this).canPop()) {
      GoRouter.of(this).pop();
    } else {
      GoRouter.of(this).push(fallbackUrl);
    }
  }

  bool get isMobile => screenWidth < FormFactor.maxMobileWidth;
}

class FormFactor {
  static double maxMobileWidth = 599;
  static double maxTabletWidth = 960;
}