import 'package:flutter/material.dart';
import 'package:website/presentation/desktop/portfolio_desktop/portfolio_desktop.dart';
import 'package:website/presentation/mobile/portfolio_mobile/portfolio_mobile.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1299) {
        return const PortfolioMobile();
      } else {
        return const PortfolioDesktop();
      }
    });
  }
}