import 'package:flutter/material.dart';
import 'domain/social_media.dart';
import 'package:url_launcher/url_launcher.dart';

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
              ...socialMediaList.map((e) => SocialMediaIcons(e)).toList(),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialMediaIcons extends StatelessWidget {
  final SocialMedia socialMedia;

  const SocialMediaIcons(this.socialMedia);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      disabledColor: Colors.white,
      icon: Icon(socialMedia.icon),
      onPressed: socialMedia.url != "" ? () => launch(socialMedia.url) : () {},
      tooltip: socialMedia.name,
    );
  }
}
