import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/strings.dart';
import 'package:universal_html/html.dart' as html;
// import 'package:website/core/widgets/desktop_app_bar.dart';
import 'package:website/core/widgets/pop_up_section.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          Strings.name,
          style: GoogleFonts.patuaOne(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Palette.lightOrange,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close)),
              ),
            ),
            ListTile(
              onTap: () {
                context.go('/');
              },
              leading: const Icon(FontAwesomeIcons.house),
              title: const Text('Home'),
            ),
            ListTile(
              onTap: () {
                context.go('/about');
              },
              leading: const Icon(FontAwesomeIcons.person),
              title: const Text('About'),
            ),
            ListTile(
              onTap: () {
                // context.go('/terminal_cv');
              },
              leading: const Icon(FontAwesomeIcons.file),
              title: const Text('Portfolio'),
            ),
            ListTile(
              onTap: () {
                // context.go('/terminal_cv');
              },
              leading: const Icon(FontAwesomeIcons.blog),
              title: const Text('Blog'),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                context.go('/contact_me');
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Palette.lightOrange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Let's connect",
                      style: GoogleFonts.patuaOne(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50, right: 50),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 50, top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'Welcome to my portfolio!',
              style: GoogleFonts.patuaOne(
                color: Colors.grey,
                fontSize: 30,
              ),
            ),
            SizedBox(
              child: SelectableText(
                Strings.letsBuildGreatThingsTogheter,
                style: GoogleFonts.patuaOne(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            const SizedBox(height: 50),
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
                              textAlign: TextAlign.center,
                              style: GoogleFonts.patuaOne(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            const SizedBox(height: 20),
                            PopUpSection(
                              isMobile: true,
                              section: Strings.typeFaced,
                              description: Strings.viewTheCVAsARegularDocument,
                              buttonText: Strings.viewTypeFacedCV,
                              function: () {
                                context.go('/normal_cv');
                              },
                            ),
                            const SizedBox(height: 20),
                            PopUpSection(
                              isMobile: true,
                              section: Strings.terminal,
                              description: Strings.discoverTheCV,
                              buttonText: Strings.viewTerminalCV,
                              function: () {
                                context.go('/terminal_cv');
                              },
                            ),
                            const SizedBox(height: 20),
                            PopUpSection(
                              isMobile: true,
                              section: Strings.threeDExperience,
                              description: Strings.exploreA3DWorld,
                              buttonText: 'Coming soon',
                              function: () {},
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      Strings.interactiveCV,
                      style: GoogleFonts.patuaOne(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
