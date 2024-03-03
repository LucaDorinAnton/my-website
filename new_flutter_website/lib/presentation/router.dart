import 'package:go_router/go_router.dart';
import 'package:website/presentation/desktop/experience_cv_desktop/experience_cv_desktop.dart';
import 'package:website/presentation/pages/home_page.dart';
import 'package:website/presentation/pages/normal_cv.dart';
import 'package:website/presentation/desktop/terminal_cv_desktop/terminal_cv_desktop.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/normal_cv',
      builder: (context, state) => const NormalCV(),
    ),
    GoRoute(
      path: '/terminal_cv',
      builder: (context, state) => const TerminalCVDesktop(),
    ),
    GoRoute(
      path: '/experience_cv',
      builder: (context, state) => const ExperienceCVDesktop(),
    ),
  ],
);
