import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../pages/authenticated.dart';
import '../pages/forms.dart';
import '../pages/home.dart';
import '../pages/login.dart';

export 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: LoginPage, path: '/login'),
    AutoRoute(
      page: AuthenticatedPageWrapper,
      path: '/',
      children: [
        AutoRoute(page: HomePage, path: ''),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
