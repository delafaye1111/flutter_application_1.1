import 'package:flutter/material.dart';
import 'package:flutter_application_1/evcharging_page.dart';
import 'package:flutter_application_1/welcome_page.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});
  @override
  State<AboutPage> createState() => _AboutState();
}

class _AboutState extends State<AboutPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              debugPrint('leading icon pressed');
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Center(
            child: Text('Home Page',
                style: TextStyle(fontSize: 16, color: Colors.white)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/welcomePage');
            },
            child: const Text('Welcome Page'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/evchargingPage');
            },
            child: const Text('Evcharging Page'),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('fabtest');
        },
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
