import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/views/bottom_nav.dart';
import 'package:project1/views/one_text.dart';
import 'package:project1/views/top_of_page.dart';

import 'package:project1/views/categories.dart';
import 'package:project1/views/explore_text.dart';
import 'package:project1/views/places.dart';
import 'package:project1/views/search_bar.dart';

Widget HomePage() {
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
