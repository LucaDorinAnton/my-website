import 'package:flutter/material.dart';
import 'package:website/core/responsive_layout.dart';
import 'package:website/presentation/desktop/home_page/home_page_desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: DesktopScaffold(),
        tabletScaffold: DesktopScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
