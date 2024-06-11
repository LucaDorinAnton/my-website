import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/strings.dart';
import 'package:universal_html/html.dart' as html;
import 'package:website/core/widgets/desktop_app_bar.dart';
import 'package:website/core/widgets/footer.dart';
import 'package:website/core/widgets/pop_up_section.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _firstAnimation;
  late Animation<double> _secondAnimation;
  late Animation<double> _thirdAnimation;
  late Animation<double> _fourthAnimation;
  late double screenWidth;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _controller.forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    screenWidth = MediaQuery.of(context).size.width;

    _firstAnimation = Tween<double>(
      begin: screenWidth,
      end: screenWidth / 2,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _secondAnimation = Tween<double>(
      begin: screenWidth,
      end: screenWidth / 2,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _thirdAnimation = Tween<double>(
      begin: screenWidth,
      end: screenWidth / 1.2,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _fourthAnimation = Tween<double>(
      begin: screenWidth,
      end: screenWidth / 1.2,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
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
                color: Palette.lightOrange,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        flexibleSpace: const AppBarDesktop(),
        backgroundColor: Palette.background,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight,
              child: Stack(
                children: [
                  AnimatedBuilder(
                    animation: _firstAnimation,
                    builder: (context, child) {
                      return Positioned(
                        left: _firstAnimation.value,
                        child: Container(
                          width: screenWidth / 1.1,
                          height: screenHeight,
                          color: Palette.darkRed,
                        ),
                      );
                    },
                  ),
                  AnimatedBuilder(
                    animation: _secondAnimation,
                    builder: (context, child) {
                      return Positioned(
                        left: _secondAnimation.value - screenWidth / 2,
                        child: Container(
                          width: screenWidth / 1.2,
                          height: screenHeight,
                          color: Palette.lightOrange,
                        ),
                      );
                    },
                  ),
                  AnimatedBuilder(
                    animation: _thirdAnimation,
                    builder: (context, child) {
                      return Positioned(
                        left: _thirdAnimation.value - screenWidth,
                        child: Container(
                          width: screenWidth / 1.2,
                          height: screenHeight,
                          color: Palette.lightOrange,
                        ),
                      );
                    },
                  ),
                  AnimatedBuilder(
                    animation: _fourthAnimation,
                    builder: (context, child) {
                      return Positioned(
                        left: _thirdAnimation.value - screenWidth,
                        child: Container(
                          width: screenWidth / 1.2,
                          height: screenHeight,
                          color: Palette.background,
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 150.0, top: 200),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText(
                            'Welcome to my portfolio!',
                            style: GoogleFonts.patuaOne(
                              color: Colors.white,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            Strings
                                                .chooseHowYouDLikeToInteractWithCV,
                                            style: GoogleFonts.patuaOne(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w100,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          PopUpSection(
                                            section: Strings.typeFaced,
                                            description: Strings
                                                .viewTheCVAsARegularDocument,
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
                                            description:
                                                Strings.exploreA3DWorld,
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
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
                  ),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
