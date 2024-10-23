import 'package:cv_francisca/constants/colors.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: (const Text("FRANS",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary))),
    );
  }
}
