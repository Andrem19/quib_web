import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialNetworks extends StatelessWidget {
  const SocialNetworks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        socIcon(FontAwesomeIcons.facebook, 'https://www.facebook.com/'),
        socIcon(FontAwesomeIcons.instagram, 'https://www.instagram.com/'),
        socIcon(FontAwesomeIcons.twitter, 'https://www.twitter.com/'),
        socIcon(FontAwesomeIcons.twitch, 'https://www.instagram.com/'),
        socIcon(FontAwesomeIcons.discord, 'https://www.instagram.com/'),
      ],
    );
  }

  Widget socIcon(IconData icon, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => _launchUrl(link),
        child: FaIcon(
          color: Colors.green,
          icon,
          size: 30,
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    js.context.callMethod('open', [url]);
  }
}
