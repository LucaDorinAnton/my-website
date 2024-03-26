import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/strings.dart';
import 'package:go_router/go_router.dart';

class AppBarDesktop extends StatelessWidget {
  const AppBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 100,
          right: 100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                context.go('/');
              },
              child: Text(
                Strings.name,
                style: GoogleFonts.patuaOne(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    context.go('/');
                  },
                  child: Text(
                    'Home',
                    style: GoogleFonts.patuaOne(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 100),
                InkWell(
                  onTap: () {
                    context.go('/about');
                  },
                  child: Text(
                    'About',
                    style: GoogleFonts.patuaOne(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 100),
                InkWell(
                  onTap: () {
                    context.go('/terminal_cv');
                  },
                  child: Text(
                    'Portfolio',
                    style: GoogleFonts.patuaOne(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 100),
                InkWell(
                  onTap: () {
                    context.go('/terminal_cv');
                  },
                  child: Text(
                    'Blog',
                    style: GoogleFonts.patuaOne(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                context.go('/contact_me');
                // await canLaunchUrl(Strings.params);
                // launchUrl(Strings.params);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Let's connect",
                    style: GoogleFonts.patuaOne(
                      color: Palette.lightOrange,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Icon(
                      Icons.arrow_forward_outlined,
                      color: Palette.lightOrange,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
