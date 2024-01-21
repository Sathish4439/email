import 'package:flutter/material.dart';

class FormattingOptionsRow extends StatefulWidget {
  @override
  _FormattingOptionsRowState createState() => _FormattingOptionsRowState();
}

class _FormattingOptionsRowState extends State<FormattingOptionsRow> {
  String selectedFontStyle = 'Normal';
  double selectedFontSize = 14.0;
  TextAlign selectedAlignment = TextAlign.left;
  String selectedMoreOptions = 'Option 1';

  List<String> fontStyles = ['Normal', 'Bold', 'Italic'];
  List<double> fontSizes = [12.0, 14.0, 16.0, 18.0];
  List<TextAlign> alignments = [
    TextAlign.left,
    TextAlign.center,
    TextAlign.right
  ];
  List<String> moreOptions = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "B",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "A",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "U",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        DropdownButton<String>(
          value: selectedFontStyle,
          onChanged: (String? newValue) {
            setState(() {
              selectedFontStyle = newValue!;
            });
          },
          items: fontStyles.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: SizedBox(
                height: 20,
                width: 50,
                child: Center(
                    child: Text(
                  value,
                  style: TextStyle(fontSize: 10),
                )),
              ),
            );
          }).toList(),
        ),
        DropdownButton<double>(
          value: selectedFontSize,
          onChanged: (double? newValue) {
            setState(() {
              selectedFontSize = newValue!;
            });
          },
          items: fontSizes.map<DropdownMenuItem<double>>((double value) {
            return DropdownMenuItem<double>(
              value: value,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Center(
                    child: Text(
                  value.toString(),
                  style: TextStyle(fontSize: 10),
                )),
              ),
            );
          }).toList(),
        ),
        DropdownButton<TextAlign>(
          value: selectedAlignment,
          onChanged: (TextAlign? newValue) {
            setState(() {
              selectedAlignment = newValue!;
            });
          },
          items: alignments.map<DropdownMenuItem<TextAlign>>((TextAlign value) {
            return DropdownMenuItem<TextAlign>(
              value: value,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Center(
                    child: FittedBox(
                  child: Text(
                    value.toString(),
                    style: TextStyle(fontSize: 10),
                  ),
                )),
              ),
            );
          }).toList(),
        ),
        DropdownButton<String>(
          value: selectedMoreOptions,
          onChanged: (String? newValue) {
            setState(() {
              selectedMoreOptions = newValue!;
            });
          },
          items: moreOptions.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Center(
                    child: Text(
                  value,
                  style: TextStyle(fontSize: 10),
                )),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
