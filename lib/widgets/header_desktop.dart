import 'package:cv_francisca/constants/colors.dart';
import 'package:cv_francisca/constants/navigation_items.dart';
import 'package:cv_francisca/styles/style.dart';
import 'package:cv_francisca/widgets/logo.dart';
import 'package:flutter/material.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.maxFinite,
      decoration: headerDecoration,
      child: Row(children: [
        Logo(onTap: () {}),
        const Spacer(),
        for (int i = 0; i < navMenu.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: TextButton(
                onPressed: () {},
                child: Text(navMenu[i],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrimary,
                    ))),
          )
      ]),
    );
  }
}
