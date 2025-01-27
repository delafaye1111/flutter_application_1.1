import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_page.dart';

class CarBrandPage extends StatefulWidget {
  CarBrandPage({super.key});

  @override
  State<CarBrandPage> createState() => _CarBrandPageState();
}

class _CarBrandPageState extends State<CarBrandPage> {
  final List<String> carbrands = <String>[
    'Tesla',
    'BMW',
    'Audi',
    'Hyundai',
    'BYD',
    'Polestar',
    'Volkswagen'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Car Brand Page",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.separated(
          itemCount: carbrands.length,
          itemBuilder: (context, index) => ListTile(
              title: Text(carbrands[index], style: TextStyle(fontSize: 20))),
          separatorBuilder: (context, int index) => const Divider(),
        ));
  }
}
