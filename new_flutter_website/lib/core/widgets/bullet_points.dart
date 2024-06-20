import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BulletPoint extends StatelessWidget {
  const BulletPoint({
    super.key,
    required this.text,
    this.isExpanded = true,
    this.isMobile = false,
  });

  final String text;
  final bool isExpanded;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          isMobile ? EdgeInsets.zero : const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SelectableText(
            "• ",
            style: GoogleFonts.patuaOne(
              fontSize: 20,
              fontWeight: FontWeight.w100,
            ),
          ),
          isExpanded
              ? Expanded(
                  child: SelectableText(
                    text,
                    style: GoogleFonts.patuaOne(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                )
              : SelectableText(
                  text,
                  style: GoogleFonts.patuaOne(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
        ],
      ),
    );
  }
}
