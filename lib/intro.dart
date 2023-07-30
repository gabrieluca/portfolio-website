import 'package:flutter/foundation.dart';
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
    final isMobile = defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Wrap(
            children: [
              ...['Gabriel ', 'Luca ', 'Ruiz']
                  .map((e) => Text(
                        e,
                        style: isMobile
                            ? Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.8),
                                shadows: [kShadow],
                              )
                            : Theme.of(context).textTheme.displayLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.8),
                                shadows: [kShadow],
                              ),
                      ))
                  .toList(),
              // AutoSizeText ?
            ],
          ),
          const SizedBox(height: 40),
          //TODO Make button responsive using responsive showcase example (Grid)
          Center(
            child: SizedBox(
              height: 100,
              child: Wrap(
                children: [
                  ...socialMediaList
                      .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
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
