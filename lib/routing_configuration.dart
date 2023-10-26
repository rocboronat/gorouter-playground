import 'package:go_router/go_router.dart';
import 'package:gorouter_playground/example_screen.dart';

// GoRouter configuration
final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ExampleScreen(label: "Welcome screen"),
    ),
    GoRoute(
      path: '/1',
      builder: (context, state) => const ExampleScreen(label: "1"),
      routes: [
        GoRoute(
          path: '2',
          builder: (context, state) => const ExampleScreen(label: "2"),
          routes: [
            GoRoute(
              path: '3',
              builder: (context, state) => const ExampleScreen(label: "3"),
            ),
          ],
        ),
      ],
    ),
  ],
);
