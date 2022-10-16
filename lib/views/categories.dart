import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 0, left: 40),
      height: 34,
      child: ListView(
        children: [
          categBox('ALL CATEGORIES ⊞', Color.fromRGBO(93, 62, 223, 1),
              Colors.white, Color.fromRGBO(93, 62, 223, 1), true),
          categBox(
              'ACCOMMODATION',
              Colors.white,
              Color.fromRGBO(93, 62, 223, 1),
              Color.fromRGBO(93, 62, 223, 1),
              false),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

Widget categBox(
    String txt, Color bg, Color textColor, Color borderColor, bool isBlod) {
  return Container(
      width: 185,
      height: 32,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(
            color: borderColor, width: 1.4, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: bg,
      ),
      child: Center(
          child: Text(txt,
              style: TextStyle(
                  color: textColor,
                  fontSize: 13,
                  fontWeight: isBlod ? FontWeight.w900 : FontWeight.w900,
                  fontFamily: isBlod ? '' : 'Trajan Pro'))));
}
