import 'package:devfestfl/faq/faq_page.dart';
import 'package:devfestfl/home/home_page.dart';
import 'package:devfestfl/map/map_page.dart';
import 'package:devfestfl/schedule/schedule_page.dart';
import 'package:devfestfl/speakers/speakers_page.dart';
import 'package:devfestfl/sponsors/sponsor_page.dart';
import 'package:devfestfl/team/team_page.dart';
import 'package:devfestfl/utils/devfest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'index.dart';

class ConfigPage extends StatefulWidget {
  static const String routeName = "/";

  const ConfigPage({Key? key}) : super(key: key);
  @override
  ConfigPageState createState() => ConfigPageState();
}

class ConfigPageState extends State<ConfigPage> {
  late ConfigBloc configBloc;
  @override
  void initState() {
    super.initState();
    configBloc = ConfigBloc();
    setupApp();
  }

  setupApp() {
    configBloc = ConfigBloc(); // calls singleton
    configBloc.darkModeOn =
        Devfest.prefs?.getBool(Devfest.darkModePref) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => configBloc,
      child: BlocBuilder<ConfigBloc, ConfigState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'GDG Devfest Florida',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              //* Custom Google Font
              fontFamily: Devfest.googleSansFamily,
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
                      ? const ColorScheme.dark()
                      : const ColorScheme.light()),
              appBarTheme: const AppBarTheme(
                elevation: 0.0,
              ),
            ),
            home: const HomePage(),
            routes: {
              HomePage.routeName: (context) => const HomePage(),
              SchedulePage.routeName: (context) => const SchedulePage(),
              SpeakersPage.routeName: (context) => const SpeakersPage(),
              TeamPage.routeName: (context) => const TeamPage(),
              SponsorPage.routeName: (context) => const SponsorPage(),
              FaqPage.routeName: (context) => const FaqPage(),
              MapPage.routeName: (context) => const MapPage(),
            },
          );
        },
      ),
    );
  }
}
