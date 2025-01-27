import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_page.dart';
import 'package:flutter_application_1/car_brand.dart';
import 'package:flutter_application_1/http_basic.dart';
import 'package:flutter_application_1/mylist_page.dart';
class DisplayPage extends StatefulWidget {
  final String? name;
  final int? age;
  DisplayPage({super.key, this.name, this.age});

  final List<String> CarBrands = <String>[
    'Tesla',
    'BMW',
    'Audi',
    'Hyundai',
    'BYD',
    'Polestar',
    'Volkswagen'
  ];
  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Display Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(padding: EdgeInsets.all(16), children: [
        ListTile(
          leading: Icon(
            Icons.person,
            size: 60,
          ),
          title: Text(
            "Name: ${widget.name ?? 'No name provided'}\nAge: ${widget.age}",
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Text("About Us"),
          tileColor: Colors.white,
          trailing: Icon(Icons.mode_edit),
          onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => AboutPage())),
        ),
        ListTile(
          leading: Icon(Icons.car_rental,size: 60,),
            title: Text(
              "Car Brand",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "View/Edit your profile",
              ),
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => HttpBasic())),
            trailing: Icon(Icons.mode_edit),
            tileColor: Colors.white,
            ),
      ]),
    );
  }
}
