import 'package:flutter/material.dart';
import 'package:website/presentation/desktop/normal_cv_desktop/normal_cv_desktop.dart';
import 'package:website/presentation/tablet/normal_cv_tablet/normal_cv_tablet.dart';

class NormalCV extends StatelessWidget {
  const NormalCV({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return const Text('mobile');
        } else if (constraints.maxWidth < 1120) {
          return const NormalCVTablet();
        } else {
          return const NormalCVDesktop();
        }
      },
    );
  }
}
