import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  final String? name;
  final int? age;
  const DisplayPage({super.key, this.name, this.age});

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
      body: Center(
        child: Text(
          "Name: ${widget.name ?? 'No name provided'}\nAge: ${widget.age}",
          style: TextStyle(color: Colors.white),
        ),
        
        
      ),
      
    );
  }
}
