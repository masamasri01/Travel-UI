import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopOfPage extends StatelessWidget {
  const TopOfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0X98238384),
          image: DecorationImage(
              image: AssetImage('assets/images/intro2.jpg'),
              fit: BoxFit.cover)),
    );
  }
}
