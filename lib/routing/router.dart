import 'package:fuksiarz/routing/app_routes.dart';
import 'package:fuksiarz/src/presentation/home/home_screen.dart';
import 'package:fuksiarz/src/presentation/search_screen/search_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => HomeScreen(),
      routes: [
        GoRoute(
          path: AppRoutes.search,
          builder: (context, state) => SearchScreen(),
        ),
      ],
    ),
  ],
);
