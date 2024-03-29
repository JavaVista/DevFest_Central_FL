import 'package:devfestcenfl/faq/faq_page.dart';
import 'package:devfestcenfl/home/home_page.dart';
import 'package:devfestcenfl/map/map_page.dart';
import 'package:devfestcenfl/schedule/schedule_page.dart';
import 'package:devfestcenfl/speakers/speakers_page.dart';
import 'package:devfestcenfl/sponsors/sponsor_page.dart';
import 'package:devfestcenfl/team/team_page.dart';
import 'package:devfestcenfl/utils/devfest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'index.dart';

class ConfigPage extends StatefulWidget {
  static const String routeName = "/";
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  ConfigBloc configBloc;

  @override
  void initState() {
    super.initState();
    configBloc = ConfigBloc();
    setupApp();
  }

  setupApp() {
    configBloc = ConfigBloc(); // calls singleton
    configBloc.darkModeOn =
        Devfest.prefs.getBool(Devfest.darkModePref) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => configBloc,
      child: BlocBuilder<ConfigBloc, ConfigState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Google Devfest Florida',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              //* Custom Google Font
              fontFamily: Devfest.google_sans_family,
              primarySwatch: Colors.red,
              primaryColor: configBloc.darkModeOn ? Colors.black : Colors.white,
              disabledColor: Colors.grey,
              cardColor: configBloc.darkModeOn ? Colors.black : Colors.white,
              canvasColor:
                  configBloc.darkModeOn ? Colors.black : Colors.grey[50],
              brightness:
                  configBloc.darkModeOn ? Brightness.dark : Brightness.light,
              buttonTheme: Theme.of(context).buttonTheme.copyWith(
                  colorScheme: configBloc.darkModeOn
                      ? ColorScheme.dark()
                      : ColorScheme.light()),
              appBarTheme: AppBarTheme(
                elevation: 0.0,
              ),
            ),
            home: HomePage(),
            routes: {
              HomePage.routeName: (context) => HomePage(),
              SchedulePage.routeName: (context) => SchedulePage(),
              SpeakersPage.routeName: (context) => SpeakersPage(),
              TeamPage.routeName: (context) => TeamPage(),
              SponsorPage.routeName: (context) => SponsorPage(),
              FaqPage.routeName: (context) => FaqPage(),
              MapPage.routeName: (context) => MapPage(),
            },
          );
        },
      ),
    );
  }
}
