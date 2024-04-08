import 'package:flutter/material.dart';
import 'package:website/presentation/desktop/home_page_desktop/home_page_desktop.dart';
import 'package:website/presentation/mobile/home_page_mobile/home_page_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1299) {
        return const HomePageMobile();
      } else {
        return const HomePageDesktop();
      }
    });
  }
}
