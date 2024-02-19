import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/strings.dart';
import 'package:website/core/widgets/pop_up_section.dart';
import 'package:universal_html/html.dart' as html;

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  String email = "contact@ouiquit.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background,
        centerTitle: false,
        title: TextButton(
          onPressed: () {},
          child: SelectableText(
            Strings.name,
            style: GoogleFonts.patuaOne(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              html.window.open(
                'https://github.com/LucaDorinAnton',
                'new tab',
              );
            },
            icon: const Icon(
              FontAwesomeIcons.github,
              size: 20,
              color: Palette.lightOrange,
            ),
          ),
          IconButton(
            onPressed: () {
              html.window.open(
                'https://www.linkedin.com/in/ldanton/',
                'new tab',
              );
            },
            icon: const Icon(
              FontAwesomeIcons.linkedin,
              size: 20,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () async {
              await canLaunchUrl(Strings.params);
              launchUrl(Strings.params);
            },
            icon: const Icon(
              FontAwesomeIcons.envelope,
              size: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 150.0, top: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 250,
              child: SelectableText(
                Strings.letsBuildGreatThingsTogheter,
                style: GoogleFonts.patuaOne(
                  color: Colors.white,
                  fontSize: 40,
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
                            SelectableText(
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
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    Strings.interactiveCV,
                    style: GoogleFonts.patuaOne(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
