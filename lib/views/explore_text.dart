import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      padding: EdgeInsets.only(
        top: 43,
      ),
      child: Text.rich(
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 23,
          fontFamily: 'Schyler',
        ),
        TextSpan(children: [
          TextSpan(
            text: 'Explore ',
          ),
          TextSpan(
              text: 'Nablus',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color.fromRGBO(93, 62, 223, 1),
              )),
          TextSpan(
            text: ', Palestine.                ',
          ),
        ]),
      ),
    );
  }
}
