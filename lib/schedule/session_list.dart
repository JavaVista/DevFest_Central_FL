import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfestcenfl/home/session.dart';
import 'package:devfestcenfl/schedule/session_detail.dart';
import 'package:devfestcenfl/utils/tools.dart';
import 'package:flutter/material.dart';

class SessionList extends StatelessWidget {
  final List<Session> allSessions;

  const SessionList({Key key, @required this.allSessions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: false,
      itemCount: allSessions.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 0.0,
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SessionDetail(
                    session: allSessions[index],
                  ),
                ),
              );
            },
            isThreeLine: true,
            trailing: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "${allSessions[index].sessionStartTime}\n",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: allSessions[index].sessionTotalTime,
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                              fontSize: 12,
                            ))
                  ]),
            ),
            leading: Hero(
              tag: allSessions[index].speakerImage,
              child: CircleAvatar(
                radius: 30,
                backgroundImage:
                    CachedNetworkImageProvider(allSessions[index].speakerImage),
              ),
            ),
            title: RichText(
              text: TextSpan(
                  text: "${allSessions[index].sessionTitle}\n",
                  style:
                      Theme.of(context).textTheme.title.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                        text: allSessions[index].speakerName,
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Tools.multiColors[Random().nextInt(4)],
                            ),
                        children: [])
                  ]),
            ),
            subtitle: Text(
              allSessions[index].speakerDesc,
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 10,
                  ),
            ),
          ),
        );
      },
    );
  }
}
