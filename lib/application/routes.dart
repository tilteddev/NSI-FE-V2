import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nsf_v2/presentation/screens/auth/route.dart';
import 'package:nsf_v2/presentation/screens/inventory/route.dart';

part 'routes.g.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  initialLocation: "/auth",
  routes: $appRoutes
);

@TypedGoRoute<MainRouteData>(
  path: '/',
  routes: [
    TypedGoRoute<AuthRouteData>(path: 'auth', name: 'auth_screen'),
    TypedGoRoute<InventoryRouteData>(path: 'inventory', name: 'inventory_screen')
  ]
)
class MainRouteData extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SizedBox.shrink();
  }
}