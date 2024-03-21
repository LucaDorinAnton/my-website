import 'package:flutter/material.dart';
import 'package:website/core/palette.dart';
import 'package:website/core/widgets/contact_form.dart';
import 'package:website/core/widgets/desktop_app_bar.dart';

class ContactMeDesktop extends StatelessWidget {
  const ContactMeDesktop({super.key});

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Palette.lightOrange,
      appBar: AppBar(
        flexibleSpace: const AppBarDesktop(),
        backgroundColor: Palette.background,
      ),
      body: Row(
        children: [
          SizedBox(
            height: double.infinity,
            width: 500,
            child: Image.asset(
              'assets/images/terminal.jpeg',
              fit: BoxFit.fill,
            ),
          ),
          const ContactForm(),
        ],
      ),
    );
  }
}
