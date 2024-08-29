import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfestfl/home/speaker.dart';
import 'package:devfestfl/universal/dev_scaffold.dart';
import 'package:devfestfl/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SpeakersPage extends StatelessWidget {
  static const String routeName = "/speakers";

  const SpeakersPage({Key? key}) : super(key: key);

  Widget socialActions(context, Speaker speaker) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.link,
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
      title: "Speakers",
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: speakers.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              elevation: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints.expand(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                      child: CachedNetworkImage(
                        imageUrl: speakers[index].speakerImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                speakers[index].speakerName,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 5,
                                color: Tools.multiColors[Random().nextInt(4)],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            speakers[index].speakerDesc,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            speakers[index].speakerSession,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Location: ${speakers[index].location}",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color:
                                        Tools.multiColors[Random().nextInt(4)]),
                          ),
                          socialActions(context, speakers[index]),
                        ],
                      ),
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
