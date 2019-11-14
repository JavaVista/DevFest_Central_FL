import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfestcenfl/home/speaker.dart';
import 'package:devfestcenfl/universal/dev_scaffold.dart';
import 'package:devfestcenfl/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SpeakersPage extends StatelessWidget {
  static const String routeName = "/speakers";

  Widget socialActions(context, Speaker speaker) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.link,
                size: 15,
              ),
              onPressed: () {
                launch(speaker.linkUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.twitter,
                size: 15,
              ),
              onPressed: () {
                launch(speaker.twitterUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedinIn,
                size: 15,
              ),
              onPressed: () {
                launch(speaker.linkedinUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.github,
                size: 15,
              ),
              onPressed: () {
                launch(speaker.githubUrl);
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
                      height: MediaQuery.of(context).size.height*0.2,
                      width: MediaQuery.of(context).size.width*0.3,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: speakers[index].speakerImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
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
                              style: Theme.of(context).textTheme.title,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 5,
                              color: Tools.multiColors[Random().nextInt(4)],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          speakers[index].speakerDesc,
                          style: Theme.of(context).textTheme.subtitle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          speakers[index].speakerSession,
                          style: Theme.of(context).textTheme.caption,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Location: ${speakers[index].location}",
                          style: Theme.of(context).textTheme.caption.copyWith(
                            color: Tools.multiColors[Random().nextInt(4)]
                          ),
                        ),
                        socialActions(context, speakers[index]),
                      ],
                    ),
                  )
                ],
              ),
            )

          );
        },
      ),
    );
  }
}
