import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfestfl/home/session.dart';
//import 'package:devfestfl/schedule/session_detail.dart';
import 'package:devfestfl/utils/tools.dart';
import 'package:flutter/material.dart';

class SessionList extends StatelessWidget {
  final List<Session> allSessions;
  final List<Session> other;

  const SessionList({Key? key, required this.allSessions, required this.other}) : super(key: key);

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
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => SessionDetail(
              //       session: allSessions[index],
              //     ),
              //   ),
              // );
            },
            isThreeLine: true,
            trailing: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "${allSessions[index].startsAt}\n",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: '60 min',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 12,
                        ),
                  ),
                ],
              ),
            ),
            leading: Hero(
              tag: allSessions[index].id,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                backgroundImage:
                    CachedNetworkImageProvider(allSessions[index].id),
              ),
            ),
            title: RichText(
              text: TextSpan(
                text: "${allSessions[index].title}\n",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 16),
                children: allSessions[index].speakers.isNotEmpty
                    ? [
                        TextSpan(
                          text: allSessions[index].speakers[0].name,
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Tools.multiColors[Random().nextInt(4)],
                              ),
                        ),
                      ]
                    : [],
              ),
            ),
            subtitle: Text(
              allSessions[index].description ?? '',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 10,
                  ),
            ),
          ),
        );
      },
    );
  }
}