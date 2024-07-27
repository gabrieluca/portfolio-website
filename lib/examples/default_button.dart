import 'package:flutter/material.dart';

import '../constant.dart';

class DefaultButton extends StatelessWidget {

  const DefaultButton({required this.text, required this.press, super.key});
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          backgroundColor: kPrimaryColor,
        ),
        onPressed: press,
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}
