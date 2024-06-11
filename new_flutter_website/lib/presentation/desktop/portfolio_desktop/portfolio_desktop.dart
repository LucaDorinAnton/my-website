import 'package:flutter/material.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/widgets/desktop_app_bar.dart';
import 'package:website/core/widgets/footer.dart';
import 'package:website/core/widgets/portfolio_card.dart';

class PortfolioDesktop extends StatelessWidget {
  const PortfolioDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        flexibleSpace: const AppBarDesktop(),
        backgroundColor: Palette.background,
      ),
      backgroundColor: Palette.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
          child: Column(
            children: [
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true, // This is important
                physics:
                    const NeverScrollableScrollPhysics(), // Prevent GridView from scrolling
                children: const [
                  PortfolioCard(
                    title: 'Proiect 1',
                    subtitle: 'Subtitlu Proiect 1',
                    description:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    image: 'assets/images/galaxy.jpg',
                    icon: Icons.work,
                  ),
                  PortfolioCard(
                    title: 'Proiect 1',
                    subtitle: 'Subtitlu Proiect 1',
                    description:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    image: 'assets/images/terminal.jpeg',
                    icon: Icons.work,
                  ),
                  PortfolioCard(
                    title: 'Proiect 1',
                    subtitle: 'Subtitlu Proiect 1',
                    description:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    image: 'assets/images/galaxy.jpg',
                    icon: Icons.work,
                  ),
                  PortfolioCard(
                    title: 'Proiect 1',
                    subtitle: 'Subtitlu Proiect 1',
                    description:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    image: 'assets/images/terminal.jpeg',
                    icon: Icons.work,
                  ),
                ],
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
