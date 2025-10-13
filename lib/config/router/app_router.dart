import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

// IMPORTA TUS 5 PANTALLAS
import '../../screens/landing_login/landing_page.dart';
import '../../screens/landing_login/client_login_page.dart';
import '../../screens/landing_login/client_register_page.dart';
import '../../screens/landing_login/provider_login_page.dart';
import '../../screens/landing_login/provider_register_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // 1) Landing (compartida)
    GoRoute(
      path: '/',
      name: LandingPage.name,
      builder: (context, state) => const LandingPage(),
    ),

    // 2) Auth CLIENTE
    GoRoute(
      path: '/auth/client/login',
      name: ClientLoginPage.name,
      builder: (context, state) => const ClientLoginPage(),
    ),
    GoRoute(
      path: '/auth/client/register',
      name: ClientRegisterPage.name,
      builder: (context, state) => const ClientRegisterPage(),
    ),

    // 3) Auth PROVEEDOR
    GoRoute(
      path: '/auth/provider/login',
      name: ProviderLoginPage.name,
      builder: (context, state) => const ProviderLoginPage(),
    ),
    GoRoute(
      path: '/auth/provider/register',
      name: ProviderRegisterPage.name,
      builder: (context, state) => const ProviderRegisterPage(),
    ),
  ],
);
