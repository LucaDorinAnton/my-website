import 'package:flutter/material.dart';
import 'package:website/presentation/desktop/about_desktop/about_desktop.dart';
import 'package:website/presentation/mobile/about_mobile/about_mobile.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1299) {
        return const AboutMobile();
      } else {
        return const AboutDesktop();
      }
    });
  }
}
