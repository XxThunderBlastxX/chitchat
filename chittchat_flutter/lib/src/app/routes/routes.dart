import 'package:go_router/go_router.dart';

import '../../feature/chat/presentation/chat_screen.dart';
import '../../feature/home/presentation/home_screen.dart';

class AppRouterPath {
  static const home = '/';
  static const chat = '/chat';
}

class AppRouter {
  AppRouter._();

  static final instance = AppRouter._();

  GoRouter router = GoRouter(
    initialLocation: AppRouterPath.home,
    routes: [
      GoRoute(
        path: AppRouterPath.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRouterPath.chat,
        builder: (context, state) {
          final String channelId =
              state.queryParameters['channel'] ?? 'default';
          return ChatScreen(channelId: channelId);
        },
      ),
    ],
  );
}
