import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final String description;
  final String image;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: SizedBox(
          height: 100,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(icon),
                  title: Text(title),
                  subtitle: Text(
                    subtitle,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    description,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('GitHub'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Alt buton daca vrei'),
                    ),
                  ],
                ),
                SizedBox(
                  width: double
                      .infinity, // Makes the container take the full width
                  child: Image.asset(
                    image,
                    fit: BoxFit
                        .cover, // This ensures the image covers the available space
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
