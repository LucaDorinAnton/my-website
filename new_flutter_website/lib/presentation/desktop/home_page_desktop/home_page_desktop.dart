import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/strings.dart';
import 'package:universal_html/html.dart' as html;
import 'package:website/core/widgets/desktop_app_bar.dart';
import 'package:website/core/widgets/pop_up_section.dart';

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
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: SizedBox(
                      width: 650,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Strings.chooseHowYouDLikeToInteractWithCV,
                              style: GoogleFonts.patuaOne(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            const SizedBox(height: 20),
                            PopUpSection(
                              section: Strings.typeFaced,
                              description: Strings.viewTheCVAsARegularDocument,
                              buttonText: Strings.viewTypeFacedCV,
                              function: () {
                                context.go('/normal_cv');
                              },
                            ),
                            const SizedBox(height: 20),
                            PopUpSection(
                              section: Strings.terminal,
                              description: Strings.discoverTheCV,
                              buttonText: Strings.viewTerminalCV,
                              function: () {
                                context.go('/terminal_cv');
                              },
                            ),
                            const SizedBox(height: 20),
                            PopUpSection(
                              section: Strings.threeDExperience,
                              description: Strings.exploreA3DWorld,
                              buttonText: Strings.viewExperienceCV,
                              function: () {
                                context.go('/experience_cv');
                              },
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Palette.darkRed,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    Strings.interactiveCV,
                    style: GoogleFonts.patuaOne(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
