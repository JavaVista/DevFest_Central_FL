import 'package:devfestfl/config/config_bloc.dart';
import 'package:devfestfl/faq/faq_page.dart';
import 'package:devfestfl/map/map_page.dart';
import 'package:devfestfl/schedule/schedule_page.dart';
import 'package:devfestfl/speakers/speakers_page.dart';
import 'package:devfestfl/sponsors/sponsor_page.dart';
import 'package:devfestfl/team/team_page.dart';
import 'package:devfestfl/universal/image_card.dart';
import 'package:devfestfl/utils/devfest.dart';
import 'package:devfestfl/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFront extends StatelessWidget {
  const HomeFront({super.key});

  _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  List<Widget> devFestTexts(context) => [
        Text(
          Devfest.welcomeText,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          Devfest.subtitleText,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          Devfest.descText,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ];

  Widget socialActions(context) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(FontAwesomeIcons.facebookF),
              onPressed: () async {
                await _launchURL("https://www.facebook.com/devfestflorida/");
              },
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.twitter),
              onPressed: () async {
                await _launchURL("https://twitter.com/devfestfl");
              },
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.linkedinIn),
              onPressed: () async {
                _launchURL("https://www.linkedin.com/company/devfestflorida/");
              },
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.youtube),
              onPressed: () async {
                await _launchURL(
                    "https://www.youtube.com/channel/UCKy_rozojea4PZHCVYHqKwg");
              },
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.meetup),
              onPressed: () async {
                await _launchURL("https://www.meetup.com/GDG-Central-Florida/");
              },
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.envelope),
              onPressed: () async {
                var emailUrl =
                    '''mailto:javi@devfestflorida.org?subject=I Need Support - DevFest Florida 🌴🏖 App&body=Thanks for reaching out! I'd be more than happy to help you. Please, provide below a description of the issue and your contact information.
👇👇👇
 \n
 ''';
                var out = Uri.encodeFull(emailUrl);
                await _launchURL(out);
              },
            ),
          ],
        ),
      );

  Widget newActions(context) => Wrap(
        alignment: WrapAlignment.center,
        spacing: 30.0,
        runSpacing: 30.0,
        children: <Widget>[
          ActionCard(
            icon: Icons.schedule,
            color: Colors.red,
            title: Devfest.scheduleText,
            onPressed: () =>
                Navigator.pushNamed(context, SchedulePage.routeName),
          ),
          ActionCard(
            icon: Icons.person,
            color: Colors.green,
            title: Devfest.speakersText,
            onPressed: () =>
                Navigator.pushNamed(context, SpeakersPage.routeName),
          ),
          ActionCard(
            icon: Icons.people,
            color: Colors.amber,
            title: Devfest.teamText,
            onPressed: () => Navigator.pushNamed(context, TeamPage.routeName),
          ),
          ActionCard(
            icon: Icons.attach_money,
            color: Colors.purple,
            title: Devfest.sponsorText,
            onPressed: () =>
                Navigator.pushNamed(context, SponsorPage.routeName),
          ),
          ActionCard(
            icon: Icons.question_answer,
            color: Colors.brown,
            title: Devfest.faqText,
            onPressed: () => Navigator.pushNamed(context, FaqPage.routeName),
          ),
          ActionCard(
            icon: Icons.map,
            color: Colors.blue,
            title: Devfest.mapText,
            onPressed: () => Navigator.pushNamed(context, MapPage.routeName),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageCard(
              img: ConfigBloc().darkModeOn
                  ? Devfest.bannerDark
                  : Devfest.bannerLight,
            ),
            const SizedBox(
              height: 20,
            ),
            ...devFestTexts(context),
            const SizedBox(
              height: 20,
            ),
            newActions(context),
            const SizedBox(
              height: 20,
            ),
            socialActions(context),
            const SizedBox(
              height: 20,
            ),
            Text(
              Devfest.appVersion,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final String title;
  final Color color;

  const ActionCard({super.key, required this.onPressed, required this.icon, required this.title, required this.color});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => onPressed(),
      child: Ink(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
            color: ConfigBloc().darkModeOn
                ? Tools.hexToColor("#1f2124")
                : Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: !ConfigBloc().darkModeOn
                ? [
                    BoxShadow(
                      color: Colors.grey[300]!,
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.blue[200]!,
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: color,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 14,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
