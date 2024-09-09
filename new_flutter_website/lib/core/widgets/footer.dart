import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';
import 'package:universal_html/html.dart' as html;

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.background,
      width: double.infinity,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 50, bottom: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    context.go('/');
                  },
                  child: Text(
                    'Home',
                    style: GoogleFonts.patuaOne(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    context.go('/about');
                  },
                  child: Text(
                    'About',
                    style: GoogleFonts.patuaOne(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    context.go('/portfolio');
                  },
                  child: Text(
                    'Portfolio',
                    style: GoogleFonts.patuaOne(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    context.go('/terminal_cv');
                  },
                  child: Text(
                    'Blog',
                    style: GoogleFonts.patuaOne(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    context.go('/contact_me');
                  },
                  child: Text(
                    'Contact Me',
                    style: GoogleFonts.patuaOne(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  '© 2024 Androtech Ltd. All rights reserved.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    html.window.open(
                        'https://www.linkedin.com/in/victorandreiradoi/',
                        'new tab');
                  },
                  child: Text(
                    'Visit my LinkedIn Profile',
                    style: GoogleFonts.patuaOne(
                      color: Palette.teal,
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
