// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 69, 121, 80)),
          scaffoldBackgroundColor: Color.fromARGB(255, 75, 126, 86),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 255, 255, 255)),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'EV Charging',
              style: TextStyle(color: Colors.white),
            ),
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
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.car_repair_outlined,
                  color: Colors.white,
                  size: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10, height: 50),
                    Card(
                      color: Color.fromARGB(255, 59, 99, 68),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Charging Info',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     TextField(
                    //       decoration: InputDecoration(
                    //         border: OutlineInputBorder(),
                    //         labelText: 'Name',
                    //         hintText: 'Enter Name',
                    //       ),
                    //     ),
                    //   ],
                    // )
                  ],
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     labelText: 'Name',
                //     hintText: 'Enter Name',
                //   ),
                // ),
                // Image.network(
                //     'https://cdn.shopify.com/s/files/1/0597/4209/3363/files/jd_FJ9509-001_al_large.jpg?v=1726193826'),
                SizedBox(
                  height: 10,
                ),
                // Card(
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
                //     style: TextStyle(fontSize: 16)),

                // ElevatedButton(
                //     onPressed: () {
                //       debugPrint('asd');
                //     },
                //     child: const Text(
                //       'Sent',
                //       style: TextStyle(fontSize: 26),
                //     )),
                TextField(
                  style: TextStyle(
                      fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Current SOC',
                    hintText: 'Enter %',
                  ),
                ),
                TextField(
                  style: TextStyle(
                      fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Target SOC',
                    hintText: 'Enter %',
                  ),
                ),
                TextField(
                  style: TextStyle(
                      fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Charging Rate',
                    hintText: 'Enter A',
                  ),
                ),
                TextField(
                  style: TextStyle(
                      fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Voltage',
                    hintText: 'Enter V',
                  ),
                ),

                TextField(
                  style: TextStyle(
                      fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Battery Capacity',
                    hintText: 'Enter kWh',
                  ),
                ),
                TextField(
                  style: TextStyle(
                      fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Effciency',
                    hintText: 'Enter %',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.electrical_services,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10, height: 50),
                          Text(
                            'Charging Power',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Card(
                            color: Color.fromARGB(255, 59, 99, 68),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '1000.00 kWh',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.timelapse,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10, height: 50),
                          Text(
                            'Charging Time',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Card(
                            color: Color.fromARGB(255, 59, 99, 68),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '0.00 hrs',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      //           Row(
                      //             mainAxisAlignment: MainAxisAlignment.start,
                      //             children: [
                      //               Icon(Icons.attach_money),
                      //               SizedBox(width: 10, height: 50),
                      //               Text(
                      //                 'Estimated Total',
                      //                 style: TextStyle(
                      //                     fontSize: 20, fontWeight: FontWeight.w300),
                      //               ),
                      //               Spacer(),
                      //               Text(
                      //                 '1000.00 THB',
                      //                 style: TextStyle(
                      //                     fontSize: 22, fontWeight: FontWeight.bold),
                      //               )
                      //             ],
                      //           ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {
          //     debugPrint('fabtest');
          //   },
          //   child: const Icon(Icons.shopping_cart),
          // ),
        ));
  }
}
