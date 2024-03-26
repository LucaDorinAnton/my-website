import 'package:flutter/material.dart';
import 'package:website/presentation/desktop/terminal_cv_desktop/terminal_cv_desktop.dart';

class TerminalCV extends StatelessWidget {
  const TerminalCV({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return const Text('mobile');
        } else if (constraints.maxWidth < 1000) {
          return const Text('tablet');
        } else {
          return const TerminalCVDesktop();
        }
      },
    );
  }
}
