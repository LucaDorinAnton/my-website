import 'package:flutter/material.dart';

class ExperienceCV extends StatefulWidget {
  const ExperienceCV({super.key});

  @override
  State<ExperienceCV> createState() => _ExperienceCVState();
}

class _ExperienceCVState extends State<ExperienceCV> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return const Text('mobile');
        } else if (constraints.maxWidth < 1000) {
          return const Text('tablet');
        } else {
          return const ExperienceCV();
        }
      },
    );
  }
}
