class SponsorsData {
  List<Sponsor> sponsors;

  SponsorsData({required this.sponsors});

  SponsorsData.fromJson(Map<String, dynamic> json) : sponsors = [] {
    if (json['sponsors'] != null) {
      json['sponsors'].forEach((v) {
        sponsors.add(Sponsor.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sponsors'] = sponsors.map((v) => v.toJson()).toList();
      return data;
  }
}

class Sponsor {
  String name;
  String image;
  String desc;
  String url;

  Sponsor({
    required this.name,
    required this.image,
    required this.desc,
    required this.url,
  });

  Sponsor.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? '',
        image = json['image'] ?? '',
        desc = json['desc'] ?? '',
        url = json['url'] ?? '';
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['desc'] = desc;
    data['url'] = url;
    return data;
  }
}

List<Sponsor> sponsors = [
  Sponsor(
    name: "Google Developer Groups",
    image:
        "https://developers.google.com/community/gdg/images/logo-lockup-gdg-horizontal.png",
    desc: "Platinum Sponsor",
    url: 'https://developers.google.com/community/gdg/',
  ),
  Sponsor(
    name: "Neoware Studios",
    image: "https://devfestflorida.org/images/logos/STUDIOSLOGO_WITHTM.png",
    desc: "Platinum Sponsor",
    url: 'https://www.neowarestudios.com/',
  ),
  Sponsor(
    name: "Capgemini",
    image:
        "https://www.capgemini.com/wp-content/uploads/2017/10/capgemini_logo_hi-resolution.jpg?w=300",
    desc: "Silver Sponsor",
    url: 'https://www.capgemini.com/',
  ),
  Sponsor(
    name: "TEKsystems",
    image:
        "https://www.premiertalentpartners.com/wp-content/uploads/2018/11/teksystems-logo.jpg",
    desc: "Silver Sponsor",
    url: 'https://www.teksystems.com/',
  ),
  Sponsor(
    name: "Women Techmakers",
    image:
        "https://media.licdn.com/dms/image/C510BAQETwAo-7dXL0A/company-logo_400_400/0?e=1580342400&v=beta&t=3IWqGcAajpul9FA8fozX6PTBQcRJra9TAWutiuSFWow",
    desc: "Copper Sponsor",
    url: 'https://www.womentechmakers.com/',
  ),
  Sponsor(
    name: "DataPsy",
    image: "https://devfestflorida.org/images/logos/datapsy.png",
    desc: "Copper Sponsor",
    url: 'http://www.datapsy.com/',
  ),
  Sponsor(
    name: "Atlantic.Net",
    image: "https://devfestflorida.org/images/logos/atlantic-net.png",
    desc: "Copper Sponsor",
    url: 'https://www.atlantic.net/',
  ),
  Sponsor(
    name: "Flutter Developers Group",
    image: "https://devfestflorida.org/images/logos/flutterdevs.jpg",
    desc: "Community Partner",
    url: 'https://www.meetup.com/flutterdevs/',
  ),
  Sponsor(
    name: "Thunder Nerds",
    image:
        "http://thundernerdshoo.com/wp-content/uploads/2016/05/thunder-nerds-rule.png",
    desc: "Community Partner",
    url: 'https://www.thundernerds.io/',
  ),
  Sponsor(
    name: "Google Developers",
    image:
        "https://www.dicoding.com/blog/wp-content/uploads/2018/11/Google-Developer-Challenge.png",
    desc: "Community Partner",
    url: 'https://developers.google.com/',
  ),
  Sponsor(
    name: "Orlando Devs",
    image: "https://devfestflorida.org/images/logos/odevs.png",
    desc: "Community Partner",
    url: 'https://orlandodevs.com/',
  ),
  Sponsor(
    name: "JetBrains",
    image:
        "https://pbs.twimg.com/profile_images/675318355075682304/U5Dp5_C2_400x400.png",
    desc: "Community Partner",
    url: 'https://www.jetbrains.com/',
  ),
];
