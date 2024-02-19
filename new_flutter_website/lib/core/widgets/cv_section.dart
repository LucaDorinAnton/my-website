import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/widgets/bullet_points.dart';

class CVSection extends StatelessWidget {
  const CVSection({
    super.key,
    required this.date,
    required this.location,
    required this.position,
    required this.company,
    required this.bulletPointList,
  });

  final String date;
  final String location;
  final String position;
  final String company;
  final List<String> bulletPointList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SelectableText(
              company,
              style: GoogleFonts.patuaOne(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SelectableText(
              date,
              style: GoogleFonts.patuaOne(
                fontSize: 20,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SelectableText(
              position,
              style: GoogleFonts.patuaOne(
                  fontSize: 20,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic),
            ),
            SelectableText(
              position,
              style: GoogleFonts.patuaOne(
                fontSize: 20,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
        for (final bulletPoint in bulletPointList)
          BulletPoint(text: bulletPoint),
      ],
    );
  }
}
