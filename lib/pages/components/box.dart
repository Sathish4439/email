import 'package:flutter/material.dart';

class DraggableRow extends StatefulWidget {
  @override
  _DraggableRowState createState() => _DraggableRowState();
}

class _DraggableRowState extends State<DraggableRow> {
  List<Widget> items = [
    DraggableItem(Icon(Icons.star, color: Colors.white, size: 20)),
    DraggableItem(Icon(Icons.star, color: Colors.yellow.shade800, size: 20)),
    DraggableItem(Icon(Icons.star, color: Colors.green.shade800, size: 20)),
    DraggableItem(Icon(Icons.star, color: Colors.blue.shade800, size: 20)),
    DraggableItem(Icon(Icons.star, color: Colors.purple.shade800, size: 20)),
    DraggableItem(Icon(Icons.star, color: Colors.yellow.shade900, size: 20)),
    DraggableItem(MyBox(colors: Colors.red, text: "!")),
    DraggableItem(MyBox(colors: Colors.yellow, text: ">>")),
    DraggableItem(Container(
      height: 20,
      width: 20,
      color: Colors.red,
      child: Icon(
        Icons.done,
        size: 20,
        color: Colors.black,
      ),
    )),
    DraggableItem(MyBox(colors: Colors.blue, text: "?")),
    DraggableItem(MyBox(colors: Colors.orange, text: "i")),
  ];

  int _indexOfItemBeingDragged = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(items.length, (index) {
        return DragTarget<int>(
          onWillAccept: (data) {
            return true;
          },
          onAccept: (data) {
            setState(() {
              // Reorder the items list based on the drop position
              if (_indexOfItemBeingDragged != -1) {
                items.insert(index, items.removeAt(_indexOfItemBeingDragged));
              }
              _indexOfItemBeingDragged = -1;
            });
          },
          builder: (context, candidateData, rejectedData) {
            return Draggable(
              data: index,
              child: items[index],
              feedback: Material(
                child: items[index],
              ),
              childWhenDragging: SizedBox(),
              onDragStarted: () {
                setState(() {
                  _indexOfItemBeingDragged = index;
                });
              },
              onDragEnd: (details) {
                // Handle drag end if needed
              },
            );
          },
        );
      }),
    );
  }
}

class DraggableItem extends StatelessWidget {
  final Widget child;

  DraggableItem(this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: child,
    );
  }
}

class MyBox extends StatelessWidget {
  final Color colors;
  final String text;

  MyBox({required this.colors, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      color: colors,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
