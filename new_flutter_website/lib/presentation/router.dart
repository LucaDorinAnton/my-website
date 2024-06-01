import 'package:go_router/go_router.dart';
import 'package:website/presentation/desktop/experience_cv_desktop/experience_cv_desktop.dart';
import 'package:website/presentation/desktop/portfolio_desktop/portfolio_desktop.dart';
import 'package:website/presentation/pages/about_page.dart';
import 'package:website/presentation/pages/contact_me_page.dart';
import 'package:website/presentation/pages/home_page.dart';
import 'package:website/presentation/pages/normal_cv.dart';
import 'package:website/presentation/pages/portfolio_page.dart';
import 'package:website/presentation/pages/terminal_cv.dart';

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
      builder: (context, state) => const TerminalCV(),
    ),
    GoRoute(
      path: '/experience_cv',
      builder: (context, state) => const ExperienceCVDesktop(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutPage(),
    ),
    GoRoute(
      path: '/contact_me',
      builder: (context, state) => const ContactMePage(),
    ),
    GoRoute(
      path: '/portfolio',
      builder: (context, state) => const PortfolioPage(),
    ),
  ],
);
