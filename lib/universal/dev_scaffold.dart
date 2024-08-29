import 'package:devfestfl/config/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

class DevScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget? tabBar;

  const DevScaffold(
      {Key? key, required this.body, required this.title, this.tabBar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: ConfigBloc().darkModeOn ? Colors.grey[800] : Colors.white,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
            bottom: tabBar as PreferredSizeWidget?,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  ConfigBloc().darkModeOn
                      ? FontAwesomeIcons.lightbulb
                      : FontAwesomeIcons.solidLightbulb,
                  size: 20,
                ),
                onPressed: () {
                  ConfigBloc()
                      .add(DarkModeEvent(!ConfigBloc().darkModeOn));
                },
              ),
              IconButton(
                onPressed: () => Share.share(
                    "Download the DevFest Florida App and share with your tech friends.\nPlayStore - https://play.google.com/store/apps/details?id=org.devfestflorida.devfestcenfl"),
                icon: const Icon(
                  Icons.share,
                  size: 25,
                ),
              ),
            ],
          ),
          body: body,
        ),
      ),
    );
  }
}
