import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hi, Welcome !",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                  height: 2,
                  wordSpacing: 2,
                  letterSpacing: 1.5,
                )),
            Text("I'm Francisca\nA Software Engineering Student",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  height: 2,
                  wordSpacing: 2,
                  letterSpacing: 1.5,
                )),
          ],
        ),
        Image.asset(
          "assets/duckwhite.png",
          width: screenWidth / 3.5,
        ),
      ]),
    );
  }
}
