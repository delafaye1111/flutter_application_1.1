import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.orange),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Shop'),
            // leading: IconButton(
            //     onPressed: () {
            //       debugPrint('leading icon pressed');
            //     },
            //     icon: const Icon(Icons.menu)),
            // actions: [
            //   // IconButton(
            //   //     onPressed: () {
            //   //       debugPrint('actions pressed');
            //   //     },
            //   //     icon: const Icon(Icons.abc)),
            //   // IconButton(
            //   //     onPressed: () {
            //   //       debugPrint('actions2 pressed');
            //   //     },
            //   //     icon: const Icon(Icons.ac_unit))
            // ],
          ),
          body: Column(
            children: [
              Image.asset('assets/images/computer.jpg'),
              const Text(
                'Thank you',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const Text('We appreciating for bought items from our shop',
                  style: TextStyle(fontSize: 16)),

              // ElevatedButton(
              //     onPressed: () {
              //       debugPrint('asd');
              //     },
              //     child: const Text(
              //       'Sent',
              //       style: TextStyle(fontSize: 26),
              //     )),
              const Row(
                children: [
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: Icon(Icons.favorite),
                  //   iconSize: 40,
                  // ),
                  Text(
                    'Order Summary',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        'Subtotal',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),
                      ),
                      Spacer(),
                      Text(
                        '1000.00 THB',
                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        'Estimated Shipping',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),
                      ),
                      Spacer(),
                      Text(
                        '0.00 THB',
                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        'Estimated Total',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),
                      ),
                      Spacer(),
                      Text(
                        '1000.00 THB',
                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint('fabtest');
            },
            child: const Icon(Icons.zoom_in),
          ),
        ));
  }
}
