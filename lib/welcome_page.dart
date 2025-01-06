import 'package:flutter/material.dart';
import 'package:flutter_application_1/display_page.dart';
import 'package:flutter_application_1/evcharging_page.dart';
import 'package:flutter_application_1/about_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});
  @override
  State<WelcomePage> createState() => _WelcomeState();
}

class _WelcomeState extends State<WelcomePage> {
  String _output = '';
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        // leading: IconButton(
        //     onPressed: () {
        //       debugPrint('leading icon pressed');
        //     },
        //     icon: const Icon(
        //       Icons.menu,
        //       color: Colors.white,
        //     )),
        actions: [
          
          // IconButton(
          //     onPressed: () {
          //       debugPrint('actions2 pressed');
          //     },
          //     icon: const Icon(
          //       Icons.ac_unit,
          //       color: Colors.white,
          //     ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
                hintText: 'Enter Name',
              ),
            ),
            Image.network(
                'https://evstationpluz.pttor.com/assets/landing/Group%206755.png'),
            // const Card(
            //   color: Colors.orange,
            //   child: Padding(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            //     child: const Text(
            //       'Thank you',
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 26,
            //           fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
            // const Text('We appreciating for bought items from our shop',
            //     style: TextStyle(fontSize: 16, color: Colors.white)),
            Text("$_output"),
            ElevatedButton(
                onPressed: () {
                  String input = _textController.text;

                  // setState(() {
                  //   //_output = 'Go to Next Page';
                  //   _output = 'you are $input';
                  // });
                  // debugPrint('pressed button . . $_output');
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DisplayPage(
                              name: input,
                              age: 18,
                            )),
                    (route) => false,
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 26),
                )),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [],
              ),
            )
          ],
        ),
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
