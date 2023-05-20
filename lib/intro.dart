import 'package:flutter/material.dart';
import 'contact_buttons.dart';
import 'domain/social_media.dart';

final kShadow = Shadow(
  offset: const Offset(0, 2),
  blurRadius: 10,
  color: Colors.black.withOpacity(0.5),
);

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Wrap(
            children: [
              Text(
                "Gabriel Luca Ruiz",
                // ignore: deprecated_member_use
                style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.8),
                  shadows: [kShadow],
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Center(
            child: SizedBox(
              height: 100,
              child: Wrap(
                children: [
                  ...socialMediaList
                      .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: ContactButtons(e),
                          ))
                      .toList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
