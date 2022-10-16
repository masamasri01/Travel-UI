import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project1/models/data.dart';

class places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 880,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: ListOfPlaces.length,
        itemBuilder: (BuildContext context, int index) {
          return place(index);
        },
      ),
    );
  }
}

Widget place(int index) {
  return Container(
    height: 210,
    decoration: BoxDecoration(),
    child: Column(
      children: [
        placeImage(index),
        placeTitle(index),
        Row(
          children: [
            placeRow(ListOfPlaces[index]['review']),
            placeRow(ListOfPlaces[index]['cost'])
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        )
      ],
    ),
  );
}

placeTitle(int index) {
  return Container(
      padding: EdgeInsets.only(top: 12),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            ListOfPlaces[index]['title'],
            style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(155, 0, 0, 0),
                fontWeight: FontWeight.w500),
          )));
}

placeRow(String txt) {
  return Text(
    txt,
    style: TextStyle(
        fontSize: 15,
        color: Color.fromARGB(255, 209, 205, 205),
        fontWeight: FontWeight.w500),
  );
}

placeImage(int index) {
  return Stack(
    children: [
      Container(
        height: 135,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(11),
          image: DecorationImage(
            image: AssetImage(ListOfPlaces[index]['image']),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
          height: 30,
          width: 30,
          margin: EdgeInsets.only(left: 271, top: 94),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Icon(
            Icons.favorite_outline,
            color: Colors.grey,
            size: 20,
          ))
    ],
  );
}
//