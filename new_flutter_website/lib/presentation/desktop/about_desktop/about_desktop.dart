import 'package:flutter/material.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/widgets/desktop_app_bar.dart';
import 'package:website/core/widgets/footer.dart';
import 'package:website/core/widgets/image_and_text_section.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        flexibleSpace: const AppBarDesktop(),
        backgroundColor: Palette.background,
      ),
      body: ListView(
        children: const [
          SizedBox(height: 150),
          ImageAndTextSection(
            imageInLeft: true,
          ),
          SizedBox(height: 150),
          ImageAndTextSection(
            imageInLeft: false,
          ),
          SizedBox(height: 250),
          Footer(),
        ],
      ),
    );
  }
}
