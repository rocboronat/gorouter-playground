import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_playground/example_screen.dart';

// GoRouter configuration
final goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ExampleScreen(label: "Welcome screen"),
    ),
    GoRoute(
      path: '/sign-in-needed',
      builder: (context, state) => const ExampleScreen(label: "Sign-in-needed"),
    ),
    GoRoute(
      path: '/1',
      builder: (context, state) => const ExampleScreen(label: "1"),
      routes: [
        GoRoute(
          path: '2',
          builder: (context, state) => const ExampleScreen(label: "2"),
          redirect: (BuildContext context, GoRouterState state) {
            if (true) {
              return '/sign-in-needed';
            } else {
              return null;
            }
          },
          routes: [
            GoRoute(
              path: '3',
              builder: (context, state) => const ExampleScreen(label: "3"),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/a',
      builder: (context, state) => const ExampleScreen(label: "A"),
      routes: [
        GoRoute(
          path: 'b',
          builder: (context, state) => const ExampleScreen(label: "B"),
          routes: [
            GoRoute(
              path: 'c',
              builder: (context, state) => const ExampleScreen(label: "C"),
            ),
          ],
        ),
      ],
    ),
  ],
);
