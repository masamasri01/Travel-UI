import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40, right: 40, top: 18),
      height: 43,
      padding: EdgeInsets.only(left: 13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Color.fromRGBO(237, 241, 245, 0.99)),
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 27,
            color: Color.fromRGBO(189, 196, 203, 0.9),
          ),
          Text("  Search for resturants, hotels, places...",
              style: TextStyle(
                color: Color.fromRGBO(189, 196, 203, 0.99),
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ))
        ],
      ),
    );
  }
}
