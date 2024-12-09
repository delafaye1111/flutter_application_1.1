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
                'ขอบคุณที่ใช้บริการ',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const Text('เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ',
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
                    'สรุปรายละเอียการชาร์จ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('test'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text('test2')],
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
