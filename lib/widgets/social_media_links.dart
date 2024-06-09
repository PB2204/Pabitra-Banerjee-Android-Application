import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaLinks extends StatelessWidget {
  final List<Map<String, dynamic>> links = [
    {'icon': FontAwesomeIcons.github, 'url': 'https://github.com/PB2204'},
    {'icon': FontAwesomeIcons.linkedin, 'url': 'https://linkedin.com/in/pabitra-banerjee'},
    {'icon': FontAwesomeIcons.twitter, 'url': 'https://twitter.com/FossilianBhed'},
    {'icon': FontAwesomeIcons.instagram, 'url': 'https://instagram.com/coderpabitra'},
    {'icon': FontAwesomeIcons.google, 'url': 'https://g.co/kgs/VuxQPCc'},
    {'icon': FontAwesomeIcons.spotify, 'url': 'https://open.spotify.com/artist/3IVD6HwQz8KIx3tqRexpqB'},
  ];

  Future<void> _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: links.map((link) {
        return IconButton(
          icon: Icon(link['icon']),
          onPressed: () => _launchURL(link['url']),
        );
      }).toList(),
    );
  }
}
