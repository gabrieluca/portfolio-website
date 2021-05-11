import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constant.dart';

// class Pair<T1, T2> {
//   final T1 a;
//   final T2 b;

//   Pair(this.a, this.b);
// }

// final _socialMedia = [
//   Pair(FlutterIcons.github_faw, "https://github.com/gabrieluca"),
//   Pair(FlutterIcons.linkedin_faw, "https://www.linkedin.com/in/gabrieluca"),
//   Pair(FlutterIcons.mail_fea, "gabrieluca17@gmail.com"),
//   Pair(FlutterIcons.instagram_faw, "https://www.instagram.com/_gabrieluca"),
//   Pair(FlutterIcons.discord_faw5d, ""),
//   Pair(FlutterIcons.twitter_ant, ""),
// ];

final _socialMediaMap = {
  FlutterIcons.github_faw: "https://github.com/gabrieluca",
  FlutterIcons.linkedin_faw: "https://www.linkedin.com/in/gabrieluca",
  FlutterIcons.mail_fea: "gabrieluca17@gmail.com",
  FlutterIcons.instagram_faw: "https://www.instagram.com/_gabrieluca",
  FlutterIcons.discord_faw5d: "",
  FlutterIcons.twitter_ant: "",
};

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Gabriel Luca",
            style: Theme.of(context).textTheme.headline1.copyWith(
                  // color: kTextcolor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ..._socialMedia.map((e) => SocialMediaIcons(e.a, e.b)).toList(),
              for (final entry in _socialMediaMap.entries) ...[
                //HACK Create a snippet
                SocialMediaIcons(entry.key, entry.value)
              ],
            ],
          ),
          FittedBox(
            // Now it just take the required spaces
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF372930),
                borderRadius: BorderRadius.circular(34),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF372930),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Get Started".toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialMediaIcons extends StatelessWidget {
  final IconData icon;
  final String link;

  const SocialMediaIcons(
    this.icon, [
    this.link,
  ]);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      disabledColor: Colors.white,
      icon: Icon(icon),
      onPressed: link != "" ? () => launch(link) : () {},
      //TODO [LINKS] Instagram
    );
  }
}
