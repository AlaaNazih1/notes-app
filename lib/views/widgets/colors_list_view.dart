import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, this.isSelected =false, required this.color});
final bool isSelected;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected ? CircleAvatar(radius: 30, backgroundColor:
     Colors.white,child: CircleAvatar(
      radius: 28,
       backgroundColor: color
     ),): 
     CircleAvatar(
      radius: 30,
       backgroundColor: color
       );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key, });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.lime,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: ColorItem(
                isSelected:  currentIndex==index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
