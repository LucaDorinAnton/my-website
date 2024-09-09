import 'package:flutter/material.dart';
import 'package:website/presentation/desktop/normal_cv_desktop/normal_cv_desktop.dart';
import 'package:website/presentation/mobile/normal_cv_mobile/normal_cv_mobile.dart';

class NormalCV extends StatelessWidget {
  const NormalCV({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1299) {
        return const NormalCVMobile();
      } else {
        return const NormalCVDesktop();
      }
    });
  }
}
