import 'package:cv_francisca/constants/colors.dart';
import 'package:cv_francisca/constants/skill_items.dart';
import 'package:flutter/material.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: CustomColor.yellowPrimary,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Here are my Skills!",
                style: const TextStyle(
                  fontSize: 27,
                  color: CustomColor.bg,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                  height: 1,
                  wordSpacing: 2,
                  letterSpacing: 1.5,
                )),
            const SizedBox(height: 20),
            const Text("Programming Languages ",
                style: const TextStyle(
                  fontSize: 20,
                  color: CustomColor.bg,
                  fontWeight: FontWeight.w800,
                  height: 2,
                  wordSpacing: 2,
                  letterSpacing: 1,
                )),
            const SizedBox(height: 20),
            //programming languages
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 650,
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 20,
                    children: [
                      for (int i = 0; i < proLanguages.length; i++)
                        Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            color: CustomColor.bgtext,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          alignment: Alignment.center,
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            leading: Image.asset(
                              proLanguages[i]["img"],
                              width: 50,
                              height: 50,
                            ),
                            title: Text(
                              proLanguages[i]["title"],
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                            minLeadingWidth: 50,
                            titleAlignment: ListTileTitleAlignment.center,
                          ),
                        )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            const Text("Tools ",
                style: const TextStyle(
                  fontSize: 20,
                  color: CustomColor.bg,
                  fontWeight: FontWeight.w800,
                  height: 2,
                  wordSpacing: 2,
                  letterSpacing: 1,
                )),
            const SizedBox(height: 20),
            //Tools
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: double.maxFinite,
                    ),
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 20,
                      children: [
                        for (int i = 0; i < tools.length; i++)
                          Container(
                            width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                              color: CustomColor.bgtext,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              leading: Image.asset(
                                tools[i]["img"],
                                width: 50,
                                height: 50,
                              ),
                              title: Text(
                                tools[i]["title"],
                                style: TextStyle(fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                              minLeadingWidth: 50,
                              titleAlignment: ListTileTitleAlignment.center,
                            ),
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            const Text("Soft Skills ",
                style: const TextStyle(
                  fontSize: 20,
                  color: CustomColor.bg,
                  fontWeight: FontWeight.w800,
                  height: 2,
                  wordSpacing: 2,
                  letterSpacing: 1,
                )),
            const SizedBox(height: 20),
            //Tools
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: double.maxFinite,
                    ),
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 20,
                      children: [
                        for (int i = 0; i < softSkills.length; i++)
                          Container(
                            width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                              color: CustomColor.bgtext,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              title: Text(
                                softSkills[i]["title"],
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              minLeadingWidth: 50,
                              titleAlignment: ListTileTitleAlignment.center,
                            ),
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
