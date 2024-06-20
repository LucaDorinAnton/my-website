import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';

class PopUpSection extends StatelessWidget {
  const PopUpSection({
    super.key,
    required this.section,
    required this.description,
    required this.buttonText,
    this.color = Palette.lightOrange,
    required this.function,
    this.isMobile = false,
  });

  final String section;
  final String description;
  final String buttonText;
  final Color color;
  final Function function;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    section,
                    style: GoogleFonts.patuaOne(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 300,
                    child: SelectableText(
                      description,
                      style: GoogleFonts.patuaOne(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    function();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      color,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: Text(
                    buttonText,
                    style: GoogleFonts.patuaOne(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    section,
                    style: GoogleFonts.patuaOne(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 300,
                    child: SelectableText(
                      description,
                      style: GoogleFonts.patuaOne(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    function();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      color,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: Text(
                    buttonText,
                    style: GoogleFonts.patuaOne(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
