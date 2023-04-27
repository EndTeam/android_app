import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:ma_for_feip/main_page/home_page.dart';
import 'package:ma_for_feip/router/routes.dart';

class AppRouter {
  static final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: AppRoutes.splash.name,
        builder: (context, state) => const Placeholder(),
        redirect: (_, __) =>
            '/${AppRoutes.home.name}', // TODO: remove when splash will be created
      ),
      GoRoute(
        path: '/${AppRoutes.signIn.name}',
        name: AppRoutes.signIn.name,
        builder: (context, state) => const Placeholder(),
      ),
      GoRoute(
        path: '/${AppRoutes.signUp.name}',
        name: AppRoutes.signUp.name,
        builder: (context, state) => const Placeholder(),
      ),
      GoRoute(
        path: '/${AppRoutes.home.name}',
        name: AppRoutes.home.name,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: AppRoutes.cart.name,
            name: AppRoutes.cart.name,
            builder: (context, state) => const Placeholder(),
          ),
          GoRoute(
            path: AppRoutes.catalog.name,
            name: AppRoutes.catalog.name,
            builder: (context, state) => const Placeholder(),
          ),
          GoRoute(
            path: AppRoutes.favorites.name,
            name: AppRoutes.favorites.name,
            builder: (context, state) => const Placeholder(),
          ),
          GoRoute(
            path: AppRoutes.product.name,
            name: AppRoutes.product.name,
            builder: (context, state) => const Placeholder(),
          ),
          GoRoute(
            path: AppRoutes.profile.name,
            name: AppRoutes.profile.name,
            builder: (context, state) => const Placeholder(),
          ),
        ],
      ),
    ],
  );
}