import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';

class ImageAndTextSection extends StatelessWidget {
  const ImageAndTextSection({
    super.key,
    required this.imageInLeft,
  });

  final bool imageInLeft;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        imageInLeft
            ? SizedBox(
                height: 500,
                child: Image.asset(
                  'assets/images/luca.png',
                  fit: BoxFit.cover,
                ),
              )
            : SizedBox(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Palette.backgroundWithOpacity,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SelectableText(
                        'Passionate and Driven Software Engineer',
                        style: GoogleFonts.patuaOne(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SelectableText(
                      "I'm Luca Dorin Anton",
                      style: GoogleFonts.patuaOne(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SelectableText(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                      style: GoogleFonts.patuaOne(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
        const SizedBox(width: 100),
        const SizedBox(
          height: 400,
          child: VerticalDivider(
            color: Colors.white,
            thickness: 2,
          ),
        ),
        const SizedBox(width: 100),
        imageInLeft
            ? SizedBox(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Palette.backgroundWithOpacity,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SelectableText(
                        'Passionate and Driven Software Engineer',
                        style: GoogleFonts.patuaOne(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SelectableText(
                      "I'm Luca Dorin Anton",
                      style: GoogleFonts.patuaOne(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SelectableText(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                      style: GoogleFonts.patuaOne(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox(
                height: 500,
                child: Image.asset(
                  'assets/images/luca.png',
                  fit: BoxFit.cover,
                ),
              ),
      ],
    );
  }
}
