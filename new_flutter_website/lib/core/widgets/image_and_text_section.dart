import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';
import 'dart:math' as math;

class ImageAndTextSection extends StatelessWidget {
  const ImageAndTextSection({
    super.key,
    required this.imageInLeft,
    this.isMobile = false,
  });

  final bool imageInLeft;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              imageInLeft
                  ? SizedBox(
                      height: 300,
                      child: Center(
                        child: Image.asset(
                          'assets/images/luca.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                      ),
                      padding: const EdgeInsets.all(15),
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Palette.backgroundWithOpacity,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SelectableText(
                              'Passionate and Driven Software Engineer',
                              textAlign: TextAlign.center,
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
                            textAlign: TextAlign.center,
                            style: GoogleFonts.patuaOne(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(height: 20),
                          SelectableText(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.patuaOne(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
              Stack(
                children: [
                  Center(
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(
                        math.pi / 4,
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            width: 3,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              imageInLeft
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                      ),
                      padding: const EdgeInsets.all(15),
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Palette.backgroundWithOpacity,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SelectableText(
                              'Passionate and Driven Software Engineer',
                              textAlign: TextAlign.center,
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
                            textAlign: TextAlign.center,
                            style: GoogleFonts.patuaOne(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(height: 20),
                          SelectableText(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                            textAlign: TextAlign.center,
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
          )
        : Row(
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
                  : Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                      ),
                      padding: const EdgeInsets.all(15),
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
              Stack(
                children: [
                  Center(
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(
                        math.pi / 4,
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            width: 3,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              imageInLeft
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                      ),
                      padding: const EdgeInsets.all(15),
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
