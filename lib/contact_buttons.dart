// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'domain/social_media.dart';
import 'intro.dart';

const _defaultSize = 32.0;
const _hoveredSize = 64.0;

class ContactButtons extends StatefulWidget {
  final SocialMedia socialMedia;

  const ContactButtons(this.socialMedia, {super.key});

  @override
  State<ContactButtons> createState() => _ContactButtonsState();
}

class _ContactButtonsState extends State<ContactButtons> with TickerProviderStateMixin {
  late final AnimationController _controller;
  double hoveredValue = _defaultSize;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.socialMedia.url.isNotEmpty ? () => launch(widget.socialMedia.url) : () {},
      onHover: (isHovered) {
        setState(() {
          hoveredValue = isHovered ? _hoveredSize : _defaultSize;
        });
      },
      child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: _defaultSize, end: hoveredValue),
          duration: const Duration(milliseconds: 200),
          builder: (BuildContext context, double size, Widget? child) {
            return Column(
              children: [
                Icon(
                  widget.socialMedia.icon,
                  color: Colors.white,
                  size: size,
                  shadows: [kShadow],
                ),
                if (size == _hoveredSize) ...[
                  const SizedBox(height: 8),
                  Text(
                    widget.socialMedia.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      // backgroundColor: Colors.black.withOpacity(0.1),
                      // fontWeight: FontWeight.bold,
                      shadows: [kShadow],
                    ),
                  ),
                ]
              ],
            );
          }),
    );
  }
}
