import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'home_page.dart';

class MainTravelPage extends StatelessWidget {
  const MainTravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
              title: 'Discover Nablus',
              body: '',
              image: Center(
                  child: Image.asset('assets/images/intro1.jpg',
                      fit: BoxFit.cover, height: double.infinity)),
              decoration: PageDecoration(
                  contentMargin: const EdgeInsets.all(11.0),
                  titleTextStyle: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontFamily: 'Schyler'),
                  fullScreen: true)),
          PageViewModel(
            title: 'City Center',
            body: 'Old buildings, tasty food  and satisfying shopping ',
            image: Center(
                child: Image.asset('assets/images/intro2.jpg',
                    fit: BoxFit.cover, height: double.infinity)),
            decoration: PageDecoration(
                titleTextStyle: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Schyler'),
                bodyTextStyle: TextStyle(fontSize: 20, color: Colors.white),
                imagePadding: EdgeInsets.all(0),
                fullScreen: true),
          ),
          PageViewModel(
              title: '',
              body: '',
              image: Center(
                  child: Image.asset('assets/images/intro3.jpg',
                      fit: BoxFit.cover, height: double.infinity)),
              decoration: PageDecoration(
                  titleTextStyle:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  bodyTextStyle: TextStyle(fontSize: 20),
                  imagePadding: EdgeInsets.all(24),
                  pageColor: Colors.white,
                  fullScreen: true)),
          PageViewModel(
            title: 'An-Najah University',
            body:
                'One of the largest Palestinian institutions of higher learning, and the Palestine Stock Exchange.',
            image: Center(
                child: Image.asset('assets/images/intro4.jpg',
                    fit: BoxFit.cover, height: double.infinity)),
            decoration: PageDecoration(
                titleTextStyle: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Schyler'),
                bodyTextStyle: TextStyle(fontSize: 23, color: Colors.white),
                imagePadding: EdgeInsets.all(0),
                fullScreen: true),
          ),
          PageViewModel(
              title: 'Visit Nablus, one of the most impressive destinations',
              body: 'Start your journey',
              footer: ButtonWidget(
                text: 'Plan your tour',
                onClicked: () => goToHome(context),
                key: null,
              ),
              image: Center(
                  child: Image.asset('assets/images/intro5.jpg',
                      fit: BoxFit.cover, height: double.infinity)),
              decoration: PageDecoration(
                  titleTextStyle:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  bodyTextStyle: TextStyle(fontSize: 20),
                  contentMargin: EdgeInsets.only(top: 0, left: 20, right: 20),
                  imagePadding: EdgeInsets.all(24),
                  pageColor: Colors.white,
                  fullScreen: true)),
        ],
        done: Text(
          'Tour',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Trajan Pro',
              fontWeight: FontWeight.w900),
        ),
        onDone: () => goToHome(context),
        showSkipButton: true,
        skip: Text(
          'Skip',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Trajan Pro',
              fontWeight: FontWeight.w900),
        ),
        onSkip: () => goToHome(context),
        next: Icon(
          Icons.arrow_forward,
          color: Color.fromRGBO(93, 62, 223, 0.8),
        ),
        dotsDecorator: DotsDecorator(
          color: Color(0xFFBDBDBD),
          activeColor: Color.fromRGBO(93, 62, 223, 0.8),
          size: Size(10, 10),
          activeSize: Size(22, 15),
          activeShape: CircleBorder(),
        ),
        globalBackgroundColor: Color.fromRGBO(93, 62, 223, 1),
        dotsFlex: 0,
        animationDuration: 800,
      ),
    );
  }

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onClicked,
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(93, 62, 223, 1),
          shape: StadiumBorder(),
        ),
        //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      );
}
