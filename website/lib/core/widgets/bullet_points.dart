import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BulletPoint extends StatelessWidget {
  const BulletPoint({
    super.key,
    required this.text,
    this.isExpanded = true,
  });

  final String text;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "• ",
            style: GoogleFonts.patuaOne(
              fontSize: 20,
              fontWeight: FontWeight.w100,
            ),
          ),
          isExpanded
              ? Expanded(
                  child: Text(
                    text,
                    style: GoogleFonts.patuaOne(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                )
              : Text(
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
