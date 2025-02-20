import 'package:go_router/go_router.dart';
import 'package:hw_navigation/features/main_navigation/home_page.dart';
import 'package:hw_navigation/features/main_navigation/main_navigation_screen.dart';
import 'package:hw_navigation/features/settings/privacy_screen.dart';
import 'package:hw_navigation/features/settings/setting_screen.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      name: "home",
      path: "/",
      builder: (context, state) {
        return const MainNavigationScreen(
          tab: "home",
        );
      },
      routes: [
        GoRoute(
          name: MainNavigationScreen.routeName,
          // "/:tab" 이런식으로 하면 tab에 오는 어떤 거든 사용가능해지는데,
          // 제한 둘때는 괄호속에 입력  "/:tab(home|discover|inbox|profile)"
          path: ":tab(search|video|activity|profile)",
          builder: (context, state) {
            final tab = state.params["tab"]!;
            return MainNavigationScreen(
              tab: tab,
            );
          },
        ),
        GoRoute(
          name: SettingScreen.routeName,
          path: SettingScreen.routeURL,
          builder: (context, state) => const SettingScreen(),
          routes: [
            GoRoute(
              name: PrivacyScreen.routeName,
              path: PrivacyScreen.routeURL,
              builder: (context, state) => const PrivacyScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
