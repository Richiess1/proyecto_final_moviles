import 'package:go_router/go_router.dart';
// Update the import path to match your project structure, for example:
import '../../screens/screens.dart'; // screens.dart

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: LandingPage.name,
      builder: (context, state) => const LandingPage(),
    ),
    GoRoute(
      path: '/login',
      name: LoginPage.name,
      builder: (context, state) => const LoginPage(),
    ),
  ],
);
