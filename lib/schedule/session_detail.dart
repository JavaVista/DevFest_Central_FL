import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfestfl/home/session.dart';
import 'package:devfestfl/home/speaker.dart';
import 'package:devfestfl/universal/dev_scaffold.dart';
import 'package:devfestfl/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SessionDetail extends StatelessWidget {
  static const String routeName = "/session_detail";
  final Session session;
  final SpeakerAtSession speakerAtSession;
  final Speaker speaker;

  const SessionDetail(
      {Key? key,
      required this.session,
      required this.speakerAtSession,
      required this.speaker})
      : super(key: key);

  Widget socialActions(BuildContext context,  session, speaker) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.facebookF,
                size: 15,
              ),
              onPressed: () {
                launchUrl(Uri.parse(speaker.links
                    .firstWhere((link) => link.linkType == 'Facebook')
                    .url));
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.twitter,
                size: 15,
              ),
              onPressed: () {
                launchUrl(Uri.parse(speaker.links
                    .firstWhere((link) => link.linkType == 'Twitter')
                    .url));
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.linkedinIn,
                size: 15,
              ),
              onPressed: () {
                launchUrl(Uri.parse(speaker.links
                    .firstWhere((link) => link.linkType == 'LinkedIn')
                    .url));
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.github,
                size: 15,
              ),
              onPressed: () {
                launchUrl(Uri.parse(speaker.links
                    .firstWhere((link) => link.linkType == 'GitHub')
                    .url));
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Hero(
                  tag: session.id,
                  child: CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Colors.white,
                    backgroundImage: CachedNetworkImageProvider(
                      speaker.profilePicture,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                speaker.tagLine,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 14,
                      color: Tools.multiColors[Random().nextInt(4)],
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                speaker.fullName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Content Level: session.contentLevel",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Location: ${speaker.fullName}",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 13,
                      fontStyle: FontStyle.normal,
                      color: Tools.multiColors[Random().nextInt(4)],
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                speaker.fullName,
                textAlign: TextAlign.left,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontSize: 13),
              ),
              const SizedBox(
                height: 20,
              ),
              socialActions(context, session, speaker),
            ],
          ),
        ),
      ),
      title: speaker.fullName,
    );
  }
}
