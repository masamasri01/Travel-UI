import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project1/views/categories.dart';
import 'package:project1/views/explore_text.dart';
import 'package:project1/views/places.dart';
import 'package:project1/views/search_bar.dart';
import 'package:project1/views/top_of_page.dart';

import 'bottom_nav.dart';
import 'one_text.dart';

class MainTravelPage extends StatelessWidget {
  const MainTravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> low = [contTmp(), contTmp()];
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          child: Stack(
            children: [
              const TopOfPage(),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    child: Container(
                        margin: const EdgeInsets.only(top: 120),
                        height: 1200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Explore(),
                            OneText(),
                            SearchBar(),
                            Categories(),
                            places()
                          ],
                        )),
                  ))
            ],
          ),
        ),
        bottomNavigationBar: const BottomNav());
  }
}

class contTmp extends StatelessWidget {
  const contTmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.red,
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.all(4),
    );
  }
}
