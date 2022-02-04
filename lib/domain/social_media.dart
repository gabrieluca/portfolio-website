import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SocialMedia {
  final String name;
  final String url;
  final IconData icon;

  SocialMedia(this.name, this.url, this.icon);
}

final socialMediaList = [
  SocialMedia(
    'GitHub',
    "https://github.com/gabrieluca",
    FlutterIcons.github_faw,
  ),
  SocialMedia(
    'Linkedin',
    "https://www.linkedin.com/in/gabrieluca",
    FlutterIcons.linkedin_faw,
  ),
  SocialMedia(
    'Email',
    "mailto:gabrieluca17@gmail.com",
    FlutterIcons.mail_fea,
  ),
  SocialMedia(
    'Instagram',
    "https://www.instagram.com/_gabrieluca",
    FlutterIcons.instagram_faw,
  ),
  SocialMedia(
    'Discord',
    "https://discord.com/users/816494917714706453",
    FlutterIcons.discord_faw5d,
  ),
  SocialMedia(
    'Twitter',
    "https://twitter.com/_gabrieluca",
    FlutterIcons.twitter_ant,
  ),
];
