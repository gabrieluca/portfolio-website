import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class SocialMedia {
  final String name;
  final String url;
  final IconData? icon;
  final String? image;

  SocialMedia(
    this.name,
    this.url, {
    this.icon,
    this.image,
  }) : assert(icon != null || image != null);
}

final socialMediaList = [
  SocialMedia(
    'GitHub',
    "https://github.com/gabrieluca",
    icon: FlutterIcons.github_faw5d,
  ),

  SocialMedia(
    'Showcase \nApp',
    "https://github.com/gabrieluca/letterboxd",
    icon: FlutterIcons.code_faw5s,
  ),
  SocialMedia(
    'Twitter',
    "https://twitter.com/_gabrieluca",
    icon: FlutterIcons.twitter_faw5d,
  ),
  SocialMedia(
    'Linkedin',
    "https://www.linkedin.com/in/gabrieluca",
    icon: FlutterIcons.linkedin_faw5d,
  ),
  SocialMedia(
    'Email',
    "mailto:gabrieluca17@gmail.com",
    icon: FlutterIcons.mail_fea,
  ),
  SocialMedia(
    'Resume',
    "https://docs.google.com/document/d/1dXa1qxHPe7WZcNaSKiwU-fufTaJUNOttiZTRa67hZl0/edit?usp=sharing",
    icon: Icons.picture_as_pdf,
  ),

  /// Too personal
  /// SocialMedia(
  //   'Instagram',
  //   "https://www.instagram.com/_gabrieluca",
  //   icon: FlutterIcons.instagram_faw,
  // ),
  /// Discord contact seems unnecessary
  // SocialMedia(
  //   'Discord',
  //   "https://discord.com/users/816494917714706453",
  //   icon: FlutterIcons.discord_faw5d,
  // ),
];
