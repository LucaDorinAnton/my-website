import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/strings.dart';
import 'package:universal_html/html.dart' as html;
import 'package:website/core/widgets/desktop_app_bar.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50, right: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                html.window.open(
                  'https://github.com/LucaDorinAnton',
                  'new tab',
                );
              },
              icon: const Icon(
                FontAwesomeIcons.github,
                size: 30,
                color: Palette.pink,
              ),
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () {
                html.window.open(
                  'https://www.linkedin.com/in/ldanton/',
                  'new tab',
                );
              },
              icon: const Icon(
                FontAwesomeIcons.linkedin,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        flexibleSpace: const AppBarDesktop(),
        backgroundColor: Palette.background,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 150.0, top: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'Welcome to my portfolio!',
              style: GoogleFonts.patuaOne(
                color: Colors.grey,
                fontSize: 40,
              ),
            ),
            SizedBox(
              child: SelectableText(
                Strings.letsBuildGreatThingsTogheter,
                style: GoogleFonts.patuaOne(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
