import 'package:flutter/material.dart';
import 'package:website/presentation/desktop/home_page_desktop/home_page_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return const Text('mobile');
      } else {
        return const HomePageDesktop();
      }
    });
  }
}
