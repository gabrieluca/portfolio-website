import 'package:flutter/material.dart';

import '../constant.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final VoidCallback press;

  const MenuItem({super.key, required this.title, required this.press});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: kTextcolor.withOpacity(0.3),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
