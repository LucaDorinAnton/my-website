import 'package:flutter/material.dart';
import 'package:website/presentation/desktop/contact_me_desktop/contact_me_desktop.dart';
import 'package:website/presentation/mobile/contact_me_mobile/contact_me_mobile.dart';

class ContactMePage extends StatefulWidget {
  const ContactMePage({super.key});

  @override
  State<ContactMePage> createState() => _ExperienceCVState();
}

class _ExperienceCVState extends State<ContactMePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1299) {
        return const ContactMeMobile();
      } else {
        return const ContactMeDesktop();
      }
    });
  }
}
