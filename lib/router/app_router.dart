import 'package:go_router/go_router.dart';
import 'package:parcial_final_app/vistas/proceso_screen.dart';
import '../vistas/screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/objetivos',
      builder: (context, state) => const ObjetivosScreen(),
    ),
    GoRoute(
      path: '/proposito',
      builder: (context, state) => const PropositoScreen(),
    ),
    GoRoute(
      path: '/historia',
      builder: (context, state) => const HistoriaScreen(),
    ),
    GoRoute(
      path: '/diferencia',
      builder: (context, state) => const DiferenciasScreen(),
    ),
    GoRoute(
      path: '/principios',
      builder: (context, state) => const PrincipiosScreen(),
    ),
    GoRoute(
      path: '/proceso',
      builder: (context, state) => const ProcesoScreen(),
    ),
    GoRoute(
      path: '/herramientas',
      builder: (context, state) => const HerramientasScreen(),
    ),
    GoRoute(
      path: '/actividad',
      builder: (context, state) => const ActividadScreen(),
    ),
    GoRoute(
      path: '/creditos',
      builder: (context, state) => CreditosScreen(),
    ),
  ],
);
