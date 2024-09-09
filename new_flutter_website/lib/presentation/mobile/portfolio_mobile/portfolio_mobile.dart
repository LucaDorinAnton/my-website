import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/strings.dart';
import 'package:website/core/widgets/portfolio_card.dart';

class PortfolioMobile extends StatelessWidget {
  const PortfolioMobile({super.key});

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
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
        child: GridView.count(
          crossAxisCount: 3,
          children: const [
            PortfolioCard(
                title: 'Proiect 1',
                subtitle: 'Subtitlu Proiect 1',
                description:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                image: 'assets/images/galaxy.jpg',
                icon: Icons.work),
          ],
        ),
      ),
    );
  }
}
