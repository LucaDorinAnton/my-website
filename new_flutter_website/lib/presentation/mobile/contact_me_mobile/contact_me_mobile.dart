import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/strings.dart';
import 'package:website/core/widgets/contact_form.dart';

class ContactMeMobile extends StatelessWidget {
  const ContactMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          Strings.name,
          style: GoogleFonts.patuaOne(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Palette.lightOrange,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close)),
              ),
            ),
            ListTile(
              onTap: () {
                context.go('/');
              },
              leading: const Icon(FontAwesomeIcons.house),
              title: const Text('Home'),
            ),
            ListTile(
              onTap: () {
                context.go('/about');
              },
              leading: const Icon(FontAwesomeIcons.person),
              title: const Text('About'),
            ),
            ListTile(
              onTap: () {
                context.go('/portfolio');
              },
              leading: const Icon(FontAwesomeIcons.file),
              title: const Text('Portfolio'),
            ),
            ListTile(
              onTap: () {
                context.go('/portfolio');
              },
              leading: const Icon(FontAwesomeIcons.blog),
              title: const Text('Blog'),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                context.go('/contact_me');
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Palette.lightOrange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Let's connect",
                      style: GoogleFonts.patuaOne(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          const ContactForm(
            isMobile: true,
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/terminal.jpeg',
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
