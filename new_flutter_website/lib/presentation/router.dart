import 'package:go_router/go_router.dart';
import 'package:website/presentation/desktop/experience_cv/experience_cv_desktop.dart';
import 'package:website/presentation/desktop/home_page/home_page_desktop.dart';
import 'package:website/presentation/desktop/normal_cv/normal_cv_desktop.dart';
import 'package:website/presentation/desktop/terminal_cv/terminal_cv_desktop.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePageDesktop(),
    ),
    GoRoute(
      path: '/normal_cv',
      builder: (context, state) => const NormalCVDesktop(),
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
