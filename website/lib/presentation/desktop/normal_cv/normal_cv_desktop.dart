import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:universal_html/html.dart' as html;
import 'package:website/core/palette.dart';
import 'package:website/core/strings.dart';
import 'package:website/core/widgets/bullet_points.dart';
import 'package:website/core/widgets/contact_section.dart';
import 'package:website/core/widgets/cv_section.dart';

class NormalCVDesktop extends StatelessWidget {
  const NormalCVDesktop({super.key});

  void downloadFile(String url) {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = 'Luca Dorin Anton CV.pdf';
    anchorElement.click();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            width: 400, // Set the fixed width of the left section
            color: Palette.background,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 40,
                right: 20,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      child: Text(
                        Strings.name,
                        style: GoogleFonts.patuaOne(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      child: Text(
                        Strings.position,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.patuaOne(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const ContactSection(
                    title: Strings.location,
                    subtitle: Strings.locationNo,
                  ),
                  const SizedBox(height: 20),
                  const ContactSection(
                    title: Strings.phoneNumber,
                    subtitle: Strings.phoneNumberNo,
                  ),
                  const SizedBox(height: 20),
                  const ContactSection(
                    title: Strings.email,
                    subtitle: Strings.emailNo,
                  ),
                  const SizedBox(height: 20),
                  const ContactSection(
                    title: Strings.linkedin,
                    subtitle: Strings.linkedinNo,
                  ),
                  const SizedBox(height: 20),
                  const ContactSection(
                    title: Strings.github,
                    subtitle: Strings.githubNo,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      downloadFile('assets/files/CV.pdf');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Palette.lightOrange,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    child: Text(
                      Strings.downloadCV,
                      style: GoogleFonts.patuaOne(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 50,
                  right: 50,
                  bottom: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'EXPERIENCE',
                      style: GoogleFonts.patuaOne(
                        fontSize: 30,
                        color: Palette.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                    const SizedBox(height: 5),
                    const CVSection(
                      date: '09/2019 - Present',
                      location: 'London - UK',
                      position: 'Information Technology Analyst',
                      company: 'Bank of America UK',
                      bulletPointList: [
                        'Python Developer working on non-financial regulatory reporting custom software platforms',
                        'Design, development, testing, deployment, monitoring and maintainance of algorithms, datastructures and information flows to provide accurate, real-time system health performance metrics to key stakeholders',
                        'Re-designed, overhauled and modernised the core web-based dashboard of the team to facilitate further developments and reduced costs of maintenance',
                        'Consistent 1st place in commits, Lines of Code removed and Lines of Code added since joining',
                      ],
                    ),
                    const SizedBox(height: 20),
                    const CVSection(
                      date: '06/2020 - 08/2020',
                      location: 'London - UK',
                      position: 'Intern',
                      company: 'Bank of America UK',
                      bulletPointList: [
                        'Main group project: Design of an AI-based, context-aware text reverse search tool'
                      ],
                    ),
                    const SizedBox(height: 20),
                    const CVSection(
                      date: '09/2019 - 05/2020',
                      location: 'London - UK',
                      position: 'Freelancer',
                      company: 'Upwork',
                      bulletPointList: [
                        'Notable project: a series of courses on the popular educational platform O’Reilly concerning various technical topics (examples: Redis, React, Flask)',
                      ],
                    ),
                    const SizedBox(height: 20),
                    const CVSection(
                      date: '07/2019 - 09/2019',
                      location: 'London - UK',
                      position: 'Intern',
                      company: 'Procter & Gamble UK',
                      bulletPointList: [
                        'Final deliverable: a complex but transparent algorithm for optimal selection of display products with decision-making based on multiple large datasets',
                      ],
                    ),
                    const SizedBox(height: 20),
                    const CVSection(
                      date: '09/2018 – 05/2019',
                      location: 'London - UK',
                      position: 'President',
                      company: 'King’s College London Robotics Society',
                      bulletPointList: [
                        'Managing the preparation, planning and executiong of a suite of events aimed at introducing students to robotics, programming, hardware and technology',
                      ],
                    ),
                    const SizedBox(height: 60),
                    Text(
                      'EDUCATIONS',
                      style: GoogleFonts.patuaOne(
                        fontSize: 30,
                        color: Palette.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                    const SizedBox(height: 5),
                    const CVSection(
                      date: '09/2017 - 04/2021',
                      location: 'London - UK',
                      position: 'MSci Computer Science',
                      company: 'King’s College London',
                      bulletPointList: [
                        'MSci in Computer Science degree (first-class honours) (3 years Bachelor + 1-year Masters)',
                        '4th year project - Proof-of-concept for mobile-first tracking and path-finding system for indoor spaces, leveraging Machine Learning and Computer Vision',
                        '3rd year project - Design and physical implementation of a simple computer architecture starting from simple logic circuits; adapting a compiler to this new architecture',
                      ],
                    ),
                    const SizedBox(height: 60),
                    Text(
                      'CERTIFICATIONS',
                      style: GoogleFonts.patuaOne(
                        fontSize: 30,
                        color: Palette.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "• ",
                          style: GoogleFonts.patuaOne(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: 'AWS Solutions Architect Associate - ',
                              style: GoogleFonts.patuaOne(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'ability to build secure and robust AWS cloud solutions using architectural design principles based on customer requirements',
                                  style: GoogleFonts.patuaOne(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "• ",
                          style: GoogleFonts.patuaOne(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: 'AWS Cloud Practitioner - ',
                              style: GoogleFonts.patuaOne(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'cloud fluency and foundational AWS knowledge',
                                  style: GoogleFonts.patuaOne(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    Text(
                      'SKILLS & EXPERTISE',
                      style: GoogleFonts.patuaOne(
                        fontSize: 30,
                        color: Palette.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      children: [
                        Column(
                          children: [
                            BulletPoint(
                              text: 'Python, JavaScript, Java, Scala',
                              isExpanded: false,
                            ),
                            BulletPoint(
                              text: 'HTML/CSS, ReactJS, Flutter',
                              isExpanded: false,
                            ),
                            BulletPoint(
                              text: 'SQL & NoSQL (Redis & MongoDB)',
                              isExpanded: false,
                            ),
                            BulletPoint(
                              text: 'Cloud – AWS, Terraform',
                              isExpanded: false,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            BulletPoint(
                              text: 'English - C2',
                              isExpanded: false,
                            ),
                            BulletPoint(
                              text: 'German - C2',
                              isExpanded: false,
                            ),
                            BulletPoint(
                              text: 'Romanian - Native',
                              isExpanded: false,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
