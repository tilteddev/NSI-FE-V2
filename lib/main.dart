import 'package:flutter/material.dart';
import 'package:nsf_v2/application/di/di.dart';
import 'package:nsf_v2/application/routes.dart';
import 'package:js/js.dart';
import 'package:url_strategy/url_strategy.dart';

@JS('getQParams')
external String getQParams(); 
late String locale;

void main() async {
  setPathUrlStrategy();
  locale = Uri.parse(getQParams()).queryParameters['langCode'] ?? 'en';
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    onGenerateTitle: (context) => 'Nusantara Inventory Analytics',
    debugShowCheckedModeBanner: false,
    routeInformationParser: router.routeInformationParser,
    routeInformationProvider: router.routeInformationProvider,
    routerDelegate: router.routerDelegate,
    locale: Locale(locale),
  ); 
  
}