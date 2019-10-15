import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfestcenfl/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

class SponsorPage extends StatelessWidget {
  static const String routeName = "/sponsor";

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    return DevScaffold(
      body: ListView(
        children: <Widget>[
          SponsorImage(
            imgUrl: "https://devfestflorida.org/images/logos/STUDIOSLOGO_WITHTM.png",
          ),
          SizedBox(
            height: 20,
          ),
          SponsorImage(
            imgUrl: "https://devfestflorida.org/images/logos/datapsy.png",
          ),
          SizedBox(
            height: 20,
          ),
          SponsorImage(
            imgUrl: "https://lh6.googleusercontent.com/JdsqW1qI_o1NEUOpC-2lgfu41iKCs460fbJVsPszMxk1wHMzNOeowpDdJEBSjzjgdCUSSCQ-PU7Lh0m1zS0o4smDSvSuv2FXhZXkFMWw8fZRgllHjiY5cEmOVnLQANvU=s412",
          ),
          SizedBox(
            height: 20,
          ),
          SponsorImage(
            imgUrl: "https://devfest.gdgkolkata.org/assets/img/logos/gd.png",
          ),
          SizedBox(
            height: 20,
          ),
          SponsorImage(
            imgUrl: "https://devfestflorida.org/images/logos/odevs.png",
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      title: "Sponsors",
    );
  }
}

class SponsorImage extends StatelessWidget {
  final String imgUrl;

  const SponsorImage({Key key, this.imgUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          height: 150.0,
          width: 150.0,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
