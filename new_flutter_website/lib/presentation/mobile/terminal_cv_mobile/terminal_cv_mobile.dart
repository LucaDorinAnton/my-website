import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/strings.dart';
import 'package:website/core/widgets/mock_repl.dart';
import 'package:xterm/xterm.dart';

class TerminalCVMobile extends StatefulWidget {
  const TerminalCVMobile({super.key});

  @override
  State<TerminalCVMobile> createState() => _TerminalCVMobileState();
}

class _TerminalCVMobileState extends State<TerminalCVMobile> {
  late Terminal terminal;
  late final MockRepl pty;

  @override
  void initState() {
    super.initState();
    terminal = Terminal();
    pty = MockRepl(terminal.write);
    terminal.onOutput = pty.write;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                context.go('/portfolio');
              },
              leading: const Icon(FontAwesomeIcons.file),
              title: const Text('Portfolio'),
            ),
            ListTile(
              onTap: () {
                context.go('/portfolio');
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
      backgroundColor: Palette.backgroundWithOpacity,
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15)),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/galaxy.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: TerminalView(
                    terminal,
                    padding: const EdgeInsets.all(10),
                    hardwareKeyboardOnly: true,
                    backgroundOpacity: 0.5,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                showModalBottomSheet<dynamic>(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 500,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Palette.teal,
                          ),
                          child: const Center(
                            child: SelectableText(
                              Strings.instructions,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SelectableText(
                            "• ${Strings.differentPiecesOfTheCVAre}",
                            style: GoogleFonts.patuaOne(
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SelectableText(
                            "• ${Strings.somePiecesOfInformationAreInPlainText}",
                            style: GoogleFonts.patuaOne(
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SelectableText(
                            "• ${Strings.ifYouReStuckRunHelp}",
                            style: GoogleFonts.patuaOne(
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    );
                  },
                );
              },
              child: Container(
                width: 80,
                height: 25,
                decoration: const BoxDecoration(
                  color: Palette.lightOrange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
