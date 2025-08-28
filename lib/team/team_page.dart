import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfestfl/home/team.dart';
import 'package:devfestfl/universal/dev_scaffold.dart';
import 'package:devfestfl/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamPage extends StatelessWidget {
  static const String routeName = "/team";

  const TeamPage({super.key});

  Widget socialActions(context, Team team) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.twitter,
                size: 15,
              ),
              onPressed: () {
                launchUrl(Uri.parse(team.twitterUrl));
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.linkedinIn,
                size: 15,
              ),
              onPressed: () {
                launchUrl(Uri.parse(team.linkedinUrl));
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.github,
                size: 15,
              ),
              onPressed: () {
                launchUrl(Uri.parse(team.githubUrl));
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      title: "Team",
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: teams.length,
        itemBuilder: (BuildContext context, int index) {
        return Card(
            elevation: 0.0,
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints.expand(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: teams[index].image,
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
                                teams[index].name,
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
                            teams[index].desc,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                         /*  Text(
                            teams[index].contribution,
                            style: Theme.of(context).textTheme.caption,
                          ), */
                          socialActions(context, teams[index]),
                        ],
                      ),
                    )
                  ],
                )),
          );
       },
      ),
    );
  }
}