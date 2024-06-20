import 'package:flutter/material.dart';
import 'package:website/presentation/desktop/terminal_cv_desktop/terminal_cv_desktop.dart';
import 'package:website/presentation/mobile/terminal_cv_mobile/terminal_cv_mobile.dart';

class TerminalCV extends StatelessWidget {
  const TerminalCV({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1299) {
        return const TerminalCVMobile();
      } else {
        return const TerminalCVDesktop();
      }
    });
  }
}
