import 'package:go_router/go_router.dart';
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

    GoRoute(
      path: '/buscar',
      name: CategoriesPage.name,
      builder: (context, state) => const CategoriesPage(),
    ),
    GoRoute(
      path: '/perfil',
      name: ProfilePage.name,
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      path: '/home',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/servicios',
      name: MyServicesPage.name,
      builder: (context, state) => const MyServicesPage(),
    ),
    GoRoute(
      path: '/servicio/detalles',
      name: DetailsServicePage.name,
      builder: (context, state) => const DetailsServicePage(),
    ),    GoRoute(
      path: '/solicitar-servicio',
      name: SolicitarServicioPage.name,
      builder: (context, state) => const SolicitarServicioPage(),
    ),
  ],
);
