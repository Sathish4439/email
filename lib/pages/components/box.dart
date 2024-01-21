import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  Color colors;
  String text;
  MyBox({super.key,required this.colors,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                       color: colors,
                        height: 20,
                        width: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: FittedBox(
                              child: Center(
                                  child: Text(text,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)))),
                        ),
                      );
  }
}