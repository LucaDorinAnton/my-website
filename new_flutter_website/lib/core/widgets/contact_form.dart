import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 900,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 100, left: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get in Touch',
              style: GoogleFonts.patuaOne(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'First Name',
                      hintStyle: GoogleFonts.patuaOne(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      prefixIcon: const Icon(
                        FontAwesomeIcons.user,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Last Name',
                      hintStyle: GoogleFonts.patuaOne(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      prefixIcon: const Icon(
                        FontAwesomeIcons.user,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              width: 615,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                  hintStyle: GoogleFonts.patuaOne(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  prefixIcon: const Icon(
                    FontAwesomeIcons.envelope,
                    size: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 615,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Phone',
                  hintStyle: GoogleFonts.patuaOne(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  prefixIcon: const Icon(
                    FontAwesomeIcons.phone,
                    size: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              child: Container(
                height: 200,
                width: 615,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        left: 20, right: 20, top: 0, bottom: 10),
                    border: InputBorder.none,
                    hintText: 'Describe your idea here...',
                    hintStyle: GoogleFonts.patuaOne(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 615,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Palette.darkRed,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text(
                  'Send message',
                  style: GoogleFonts.patuaOne(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
