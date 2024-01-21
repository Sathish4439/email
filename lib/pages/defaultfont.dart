import 'package:flutter/material.dart';

class DefaultFont extends StatefulWidget {
  const DefaultFont({Key? key}) : super(key: key);

  @override
  State<DefaultFont> createState() => _DefaultFontState();
}

class _DefaultFontState extends State<DefaultFont> {
  // Initialize selected values
  String selectedFont = 'Arial';
  String selectedFontSize = 'Medium';
  Color selectedFontColor = Colors.black;

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Default text size:"),
              Text(
                "(Use the 'Remove formatting' button on \n the toolbar to reset the default text style)",
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // 1st Dropdown for Fonts
                          ],
                        ),
                        Text(
                          "This is what your body text will look like.",
                          style: TextStyle(
                            fontFamily: selectedFont,
                            fontSize: double.parse(selectedFontSize),
                            color: selectedFontColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
