import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfestcenfl/home/sponsor.dart';
import 'package:devfestcenfl/universal/dev_scaffold.dart';
import 'package:devfestcenfl/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SponsorPage extends StatelessWidget {
  static const String routeName = "/sponsor";

  Widget socialActions(context, Sponsor sponsor) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.link,
                size: 15,
              ),
              onPressed: () {
                launch(sponsor.url);
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: sponsors.length,
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
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.4,
                        ),
                        child: CachedNetworkImage(
                          fit: BoxFit.contain,
                          imageUrl: sponsors[index].image,
                          //placeholder: (context, url) => CircularProgressIndicator(),
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
                                  sponsors[index].name,
                                  style: Theme.of(context).textTheme.title,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              sponsors[index].desc,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle
                                  .copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Tools.multiColors[Random().nextInt(4)],
                                  ),
                            ),
                            socialActions(context, sponsors[index]),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            );
          }),
      title: "Sponsors",
    );
  }
}
