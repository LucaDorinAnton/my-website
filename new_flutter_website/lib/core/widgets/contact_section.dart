import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          title,
          style: GoogleFonts.patuaOne(
            color: Palette.teal,
            fontSize: 15,
            fontWeight: FontWeight.w100,
          ),
        ),
        SelectableText(
          subtitle,
          style: GoogleFonts.patuaOne(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}
