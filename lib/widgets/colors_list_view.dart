import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isPicked, required this.color});
  final bool isPicked;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isPicked
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: CircleAvatar(radius: 26, backgroundColor: color),
          )
        : CircleAvatar(radius: 30, backgroundColor: color);
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff464655),
    Color(0xff94958B),
    Color(0xffB7B6C1),
    Color(0xffD5CFE1),
    Color(0xffEDDFEF),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isPicked: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
