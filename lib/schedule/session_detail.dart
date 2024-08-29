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

  //var index;

  const SessionDetail({Key? key, required this.session}) : super(key: key);

  Widget socialActions(context, Speaker speaker) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.facebookF,
                size: 15,
              ),
              onPressed: () {
                launchUrl(Uri.parse(speaker.linkUrl));
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.twitter,
                size: 15,
              ),
              onPressed: () {
                launchUrl(Uri.parse(speaker.twitterUrl));
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.linkedinIn,
                size: 15,
              ),
              onPressed: () {
                launchUrl(Uri.parse(speaker.linkedinUrl));
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.github,
                size: 15,
              ),
              onPressed: () {
                launchUrl(Uri.parse(speaker.githubUrl));
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
                  tag: session.speakerImage,
                  child: CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Colors.white,
                    backgroundImage: CachedNetworkImageProvider(
                      session.speakerImage,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                session.speakerDesc,
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
                session.sessionTitle,
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
                "Content Level: ${session.contentLevel}",
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
                "Location: ${session.location}",
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
                session.sessionDesc,
                textAlign: TextAlign.left,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontSize: 13),
              ),
              const SizedBox(
                height: 20,
              ),
              // TODO: Fix socialAction iteration
              //socialActions(context, speakers[index]),
            ],
          ),
        ),
      ),
      title: session.speakerName,
    );
  }
}
