import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OneText extends StatelessWidget {
  const OneText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 40, right: 40, top: 15),
        child: Text(
            "One of the world's most impressive historical destinations.",
            style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w900,
                fontSize: 16,
                fontFamily: 'Trajan Pro')));
  }
}
