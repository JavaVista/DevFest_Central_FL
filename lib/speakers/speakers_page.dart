import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfestfl/home/speaker.dart';
import 'package:devfestfl/services/sessionize_api_service.dart';
import 'package:devfestfl/universal/dev_scaffold.dart';
import 'package:devfestfl/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SpeakersPage extends StatefulWidget {
  static const String routeName = "/speakers";

  const SpeakersPage({Key? key}) : super(key: key);

  @override
  SpeakersPageState createState() => SpeakersPageState();
}

class SpeakersPageState extends State<SpeakersPage> {
  late Future<List<Speaker>> _speakersFuture;

  @override
  void initState() {
    super.initState();
    _speakersFuture = SessionizeApiService().getSpeakers().then(
        (data) => data.map<Speaker>((json) => Speaker.fromJson(json)).toList());
  }

  Widget socialActions(BuildContext context, Speaker speaker) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            for (var link in speaker.links)
              if (link.url.isNotEmpty)
                IconButton(
                  icon: Icon(
                    _getIconForLinkType(link.linkType),
                    size: 15,
                  ),
                  onPressed: () {
                    launchUrl(Uri.parse(link.url));
                  },
                ),
          ],
        ),
      );

  IconData _getIconForLinkType(String linkType) {
    switch (linkType) {
      case 'Twitter':
        return FontAwesomeIcons.twitter;
      case 'LinkedIn':
        return FontAwesomeIcons.linkedinIn;
      case 'GitHub':
        return FontAwesomeIcons.github;
      case 'Facebook':
        return FontAwesomeIcons.facebook;
      case 'Instagram':
        return FontAwesomeIcons.instagram;
      case 'Blog':
        return FontAwesomeIcons.blog;
      case 'Company_Website':
        return FontAwesomeIcons.link;
      default:
        return FontAwesomeIcons.link;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      title: "Speakers",
      body: FutureBuilder<List<Speaker>>(
        future: _speakersFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No speakers found'));
          }

          final speakers = snapshot.data!;

          return ListView.builder(
            shrinkWrap: true,
            itemCount: speakers.length,
            itemBuilder: (BuildContext context, int index) {
              final speaker = speakers[index];
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
                        child: Hero(
                          tag: speaker.id,
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.width * 0.15,
                            backgroundColor: Colors.white,
                            backgroundImage: CachedNetworkImageProvider(
                                speaker.profilePicture),
                          ),
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
                                  speaker.fullName,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                AnimatedContainer(
                                  duration: const Duration(seconds: 1),
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height: 5,
                                  color: Tools.multiColors[Random().nextInt(4)],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              speaker.tagLine,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              speaker.bio,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            socialActions(context, speaker),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
