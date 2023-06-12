import 'dart:io';
import 'package:flutter/material.dart';
import 'package:nsf_v2/application/di.dart';
import 'package:nsf_v2/application/provider/sso_provider.dart';
import 'package:nsf_v2/application/routes.dart';
import 'package:provider/provider.dart';

void main() async {

  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final SsoProvider ssoProvider = SsoProvider();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider<SsoProvider>.value(
    value: ssoProvider,
    child: MaterialApp.router(
      title: "Nusantara Inventory Analytics",
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    )
  ); 
}