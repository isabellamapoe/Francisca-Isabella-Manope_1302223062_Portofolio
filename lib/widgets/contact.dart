import 'package:cv_francisca/constants/colors.dart';
import 'package:cv_francisca/constants/skill_items.dart';
import 'package:cv_francisca/constants/social_media.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bglight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Get to Know Me More!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: CustomColor.whitePrimary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/me.png",
                width: screenWidth / 4,
              ),
              SizedBox(width: 50),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < socialMedia.length; i++)
                    Container(
                      width: 200,
                      height: 80,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            socialMedia[i]["img"],
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              socialMedia[i]["title"],
                              style: const TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
