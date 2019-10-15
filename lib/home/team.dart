class TeamsData {
  List<Team> teams;

  TeamsData({this.teams});

  TeamsData.fromJson(Map<String, dynamic> json) {
    if (json['teams'] != null) {
      teams = new List<Team>();
      json['teams'].forEach((v) {
        teams.add(Team.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.teams != null) {
      data['teams'] = this.teams.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Team {
  String name;
  String desc;
  String job;
  String image;
  String speciality;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  //String contribution;

  Team({
    this.name,
    this.desc,
    this.job,
    this.image,
    this.speciality,
    this.fbUrl,
    this.twitterUrl,
    this.linkedinUrl,
    this.githubUrl,
    //this.contribution
  });

  Team.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    job = json['job'];
    image = json['image'];
    speciality = json['speciality'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    //contribution = json['contribution'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['job'] = this.job;
    data['image'] = this.image;
    data['speciality'] = this.speciality;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    //data['contribution'] = this.contribution;
    return data;
  }
}

List<Team> teams = [
  Team(
    name: "Hendrix Tavarez",
    desc: "Lead Organizer",
    //contribution: "Google CEO",
    image: "https://devfestflorida.org/images/people/hendrix_tavarez.jpg",
    fbUrl: "https://www.facebook.com/devfestflorida/",
    twitterUrl: "https://twitter.com/htavarez",
    linkedinUrl: "https://www.linkedin.com/in/hendrixtavarez",
    githubUrl: "https://github.com/lockerfish",
  ),
  Team(
    name: "Michael Rosario",
    desc: "Organizer",
    //contribution: "Logistics and travels",
    image: "https://devfestflorida.org/images/people/michael_rosario.jpg",
    fbUrl: "https://www.facebook.com/devfestflorida/",
    twitterUrl: "https://twitter.com/michaelrosario",
    linkedinUrl: "https://www.linkedin.com/in/michaelprosario",
    githubUrl: "https://github.com/",
  ),
  Team(
    name: "Siva G",
    desc: "Organizer",
    //contribution: "Founder",
    image: "https://devfestflorida.org/images/people/siva_g.jpg",
    fbUrl: "https://www.facebook.com/devfestflorida/",
    twitterUrl: "https://twitter.com/devfestfl/",
    linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
    githubUrl: "https://github.com/",
  ),
  Team(
    name: "Christi Kapp",
    desc: "Organizer",
    //contribution: "Logistics",
    image:
        "https://devfestflorida.org/images/people/christi_kapp.png",
    fbUrl: "https://www.facebook.com/devfestflorida/",
    twitterUrl: "https://twitter.com/devfestfl/",
    linkedinUrl: "https://www.linkedin.com/in/artinmotionllc/",
    githubUrl: "https://github.com/",
  ),
  Team(
    name: "Anita Kirkovska",
    desc: "Organizer",
    //contribution: "Logistics",
    image:"https://devfestflorida.org/images/people/anita_kirkovska.jpg",
    fbUrl: "https://www.facebook.com/anitakirkovska",
    twitterUrl: "https://twitter.com/anitakirkovska",
    linkedinUrl: "https://www.linkedin.com/in/anitakirkovska",
    githubUrl: "https://github.com/",
  ),
  Team(
    name: "Marina Trajkovska",
    desc: "Organizer",
    //contribution: "Logistics",
    image:"https://devfestflorida.org/images/people/marina_trajkovska.jpg",
    fbUrl: "https://www.facebook.com/marinatrajk",
    twitterUrl: "https://twitter.com/marinatrajk",
    linkedinUrl: "https://www.linkedin.com/in/marinatrajk/",
    githubUrl: "https://github.com/",
  ),
];
