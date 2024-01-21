import 'package:email/language.dart';
import 'package:email/pages/defaultfont.dart';
import 'package:email/pages/phone.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> fontList = [
    'Arial',
    'Helvetica',
    'Times New Roman',
    'Courier New',
    'Verdana',
  ];

  List<String> fontSizeList = [
    'Small',
    'Medium',
    'Large',
    'Extra Large',
  ];

  List<Color> fontColorList = [
    Colors.black,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
  ];

// Initialize selected values
  String selectedFont = 'Arial';
  String selectedFontSize = 'Medium';
  Color selectedFontColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Divider(),
                language(),
                Divider(),
                Phone(),
                Divider(),
                DefaultFont(),
                Divider(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
