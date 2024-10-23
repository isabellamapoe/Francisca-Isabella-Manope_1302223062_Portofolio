import 'package:cv_francisca/widgets/logo.dart';
import 'package:flutter/material.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: BoxDecoration(),
      child: Row(children: [
        Logo(onTap: onLogoTap),
        const Spacer(),
        IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu)),
        SizedBox(width: 15),
      ]),
    );
  }
}
