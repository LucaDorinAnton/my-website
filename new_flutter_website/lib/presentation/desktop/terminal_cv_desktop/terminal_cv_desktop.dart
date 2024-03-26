import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/strings.dart';
import 'package:website/core/widgets/desktop_app_bar.dart';
import 'package:website/presentation/desktop/terminal_cv_desktop/mock_repl.dart';
import 'package:xterm/xterm.dart';

class TerminalCVDesktop extends StatefulWidget {
  const TerminalCVDesktop({super.key});

  @override
  State<TerminalCVDesktop> createState() => _TerminalCVDesktopState();
}

class _TerminalCVDesktopState extends State<TerminalCVDesktop> {
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
        flexibleSpace: const AppBarDesktop(),
        backgroundColor: Palette.background,
      ),
      backgroundColor: Palette.background,
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                  ),
                  width: 800,
                  height: 30,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
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
                        width: 800,
                        height: 400,
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
              ],
            ),
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                ),
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    const SizedBox(
                      height: 20,
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
