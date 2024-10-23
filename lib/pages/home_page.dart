import 'dart:html';

import 'package:cv_francisca/constants/navigation_items.dart';
import 'package:cv_francisca/constants/skill_items.dart';
import 'package:cv_francisca/widgets/contact.dart';
import 'package:cv_francisca/widgets/drawer.dart';
import 'package:cv_francisca/widgets/header_desktop.dart';
import 'package:cv_francisca/widgets/header_mobile.dart';
import 'package:cv_francisca/widgets/logo.dart';
import 'package:cv_francisca/widgets/main_desktop.dart';
import 'package:cv_francisca/widgets/main_mobile.dart';
import 'package:cv_francisca/widgets/skills_desktop.dart';
import 'package:flutter/material.dart';
import 'package:cv_francisca/constants/colors.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.bg,
        endDrawer: const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //main
            if (constraints.maxWidth >= 700)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),

            if (constraints.maxWidth >= 700)
              const MainDesktop()
            else
              const MainMobile(),

            const SkillsDesktop(),
            const Contact(),
          ],
        ),
      );
    });
  }
}
