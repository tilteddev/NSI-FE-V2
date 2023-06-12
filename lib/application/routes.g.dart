// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainRouteData,
    ];

RouteBase get $mainRouteData => GoRouteData.$route(
      path: '/',
      factory: $MainRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'auth',
          name: 'auth_screen',
          factory: $AuthRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'inventory',
          name: 'inventory_screen',
          factory: $InventoryRouteDataExtension._fromState,
        ),
      ],
    );

extension $MainRouteDataExtension on MainRouteData {
  static MainRouteData _fromState(GoRouterState state) => MainRouteData();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $AuthRouteDataExtension on AuthRouteData {
  static AuthRouteData _fromState(GoRouterState state) => AuthRouteData();

  String get location => GoRouteData.$location(
        '/auth',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $InventoryRouteDataExtension on InventoryRouteData {
  static InventoryRouteData _fromState(GoRouterState state) =>
      const InventoryRouteData();

  String get location => GoRouteData.$location(
        '/inventory',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
