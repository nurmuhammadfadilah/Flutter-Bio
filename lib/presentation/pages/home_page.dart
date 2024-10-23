import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  HomePage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to the My Page',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH3kwu9U5Seico_mNwvsUtdVc702hUIWWYYQ&s',
                height: 200,
              ),
              // SizedBox(height: 20),
              // Text(
              //   'Explore the features of our app and enjoy your journey!',
              //   style: TextStyle(
              //     fontSize: 16,
              //     color: Colors.black54,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              // SizedBox(height: 30),
            ],
          ),
        ),
      ),
      selectedIndex: 0, // Home tab is selected
      controller: controller,
    );
  }
}
