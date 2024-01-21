import 'package:email/pages/components/box.dart';
import 'package:flutter/material.dart';

class star extends StatefulWidget {
  const star({super.key});

  @override
  State<star> createState() => _starState();
}

List<Color> colors = [
  Colors.red,
  Colors.yellow,
  Colors.blue,
  Colors.orange,
  Colors.purple,
  Colors.green,
];
List<String> text = ["!", ">>", "!", "i", "?"];

class _starState extends State<star> {
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
              Text("Stars:", style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 260),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Drag the stars between the lists.",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                        "The stars will rotate in the order shown below when you click successively. To learn the name of a star for search, hover your mouse over the image."),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("Presets :"),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "1 start",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("4 start",
                        style: TextStyle(color: Colors.blue.shade900)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("all start",
                        style: TextStyle(color: Colors.blue.shade900)),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("In use:",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade800,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 500,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Not in use:",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade800,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green.shade800,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.blue.shade800,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.purple.shade800,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade900,
                        size: 20,
                      ),
                      MyBox(colors: Colors.red, text: "!"),
                      MyBox(colors: Colors.yellow, text: ">>"),
                      MyBox(colors: Colors.green, text: "!"),
                      MyBox(colors: Colors.blue, text: "?"),
                      MyBox(colors: Colors.orange, text: "!"),
                      MyBox(colors: Colors.purple, text: "!"),
                    ],
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
