import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  final HomeController controller;

  ProfilePage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0), // Fixed padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30), // Fixed height
              const CircleAvatar(
                radius: 50, // Fixed radius for better consistency
                backgroundImage: AssetImage(
                  '/root/perkuliahan/pemrograman_mobile/projek/pert4/lib/assets/image/1727698604201.jpg',
                ),
              ),
              const SizedBox(height: 10), // Fixed height
              const Text(
                'Nur Muhammad Fadilah',
                style: TextStyle(
                  fontSize: 24, // Fixed font size
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.purple),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.github, color: Colors.black),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 5), // Fixed height
              const Text(
                'muhammfadilah7@gmail.com',
                style: TextStyle(
                  fontSize: 16, // Fixed font size
                  color: Colors.grey,
                ),
              ),
              const Divider(),
              RichText(
                text: TextSpan(
                  children: [
                    // const WidgetSpan(
                    //   child: Padding(
                    //     padding: EdgeInsets.only(right: 8.0),
                    //     child: FaIcon(FontAwesomeIcons.laptopCode, color: Colors.blue),
                    //   ),
                    // ),
                    const TextSpan(
                      text: 'Hi, My name is Nur Muhammad Fadilah, a passionate programmer specialized in Web Development',
                      style: TextStyle(
                        fontSize: 16, // Fixed font size
                        color: Colors.black87,
                      ),
                    ),
                    // const TextSpan(
                    //   text: 'Akaya Zsuru',
                    //   style: TextStyle(
                    //     fontSize: 18, // Fixed font size
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.blueAccent,
                    //   ),
                    // ),
                    // const TextSpan(
                    //   text: ', a passionate programmer specialized in ',
                    //   style: TextStyle(
                    //     fontSize: 16, // Fixed font size
                    //     color: Colors.black87,
                    //   ),
                    // ),
                    // const TextSpan(
                    //   text: 'Web Development',
                    //   style: TextStyle(
                    //     fontSize: 16, // Fixed font size
                    //     fontStyle: FontStyle.italic,
                    //     color: Colors.green,
                    //   ),
                    // ),
                    // const TextSpan(
                    //   text: '. I love solving complex problems and creating efficient solutions.',
                    //   style: TextStyle(
                    //     fontSize: 16, // Fixed font size
                    //     color: Colors.black87,
                    //   ),
                    // ),
                  ],
                ),
              ),
              // const SizedBox(height: 20), // Fixed height
              // const Text(
              //   'Skills',
              //   style: TextStyle(
              //     fontSize: 20, // Fixed font size
              //     fontWeight: FontWeight.bold,
              //     color: Colors.black87,
              //   ),
              // ),
              // const SizedBox(height: 10), // Fixed height
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     _buildSkillRow(
              //       icon: FontAwesomeIcons.code,
              //       text: 'Web Development (HTML, CSS, JavaScript, React)',
              //       iconColor: Colors.purple,
              //     ),
              //     _buildSkillRow(
              //       icon: FontAwesomeIcons.database,
              //       text: 'Database Management (MySQL, PostgreSQL, MongoDB)',
              //       iconColor: Colors.teal,
              //     ),
              //     _buildSkillRow(
              //       icon: FontAwesomeIcons.shieldAlt,
              //       text: 'Cybersecurity',
              //       iconColor: Colors.red,
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 20), // Fixed height
              // const Text(
              //   'Featured Projects',
              //   style: TextStyle(
              //     fontSize: 20, // Fixed font size
              //     fontWeight: FontWeight.bold,
              //     color: Colors.black87,
              //   ),
              // ),
              // const SizedBox(height: 10), // Fixed height
              // _buildProjectCard(
              //   title: 'Swiss International Airlines',
              //   description:
              //       'A web application for fun with HTML, CSS, and Javascript',
              //   link: 'https://multi-layer-parallax.vercel.app/',
              //   screenshot:
              //       'https://i.ibb.co.com/0YQwXwq/swiss.jpg',
              // ),
            ],
          ),
        ),
      ),
      selectedIndex: 1,
      controller: controller,
    );
  }

  // Widget _buildSkillRow({
  //   required IconData icon,
  //   required String text,
  //   required Color iconColor,
  // }) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 5.0), // Fixed padding
  //     child: Row(
  //       children: [
  //         FaIcon(icon, color: iconColor),
  //         const SizedBox(width: 10), // Fixed width
  //         Expanded(
  //           child: Text(
  //             text,
  //             style: const TextStyle(fontSize: 16, color: Colors.black87), // Fixed font size
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget _buildProjectCard({
  //   required String title,
  //   required String description,
  //   required String link,
  //   required String screenshot,
  // }) {
  //   return Card(
  //     elevation: 2,
  //     margin: const EdgeInsets.symmetric(vertical: 10.0), // Fixed margin
  //     child: Padding(
  //       padding: const EdgeInsets.all(10.0), // Fixed padding
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Row(
  //             children: [
  //               Expanded(
  //                 child: Text(
  //                   title,
  //                   style: const TextStyle(
  //                     fontSize: 16, // Fixed font size
  //                     fontWeight: FontWeight.bold,
  //                     color: Colors.black87,
  //                   ),
  //                 ),
  //               ),
  //               const SizedBox(width: 10), // Fixed width
  //               Image.network(
  //                 screenshot,
  //                 width: 60, // Fixed width
  //                 height: 60, // Fixed height
  //                 fit: BoxFit.cover,
  //               ),
  //             ],
  //           ),
  //           const SizedBox(height: 10), // Fixed height
  //           Text(
  //             description,
  //             style: const TextStyle(fontSize: 14, color: Colors.black54), // Fixed font size
  //           ),
  //           const SizedBox(height: 10), // Fixed height
  //           TextButton(
  //             onPressed: () {
  //               launchURL(link);
  //             },
  //             child: const Text(
  //               'View Project',
  //               style: TextStyle(
  //                 color: Colors.blue,
  //                 fontSize: 14, // Fixed font size
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  void launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      print('Could not launch $url');
    }
  }
}
