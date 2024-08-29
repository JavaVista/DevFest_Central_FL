class TeamsData {
  List<Team> teams;

  TeamsData({required this.teams});

  TeamsData.fromJson(Map<String, dynamic> json) : teams = [] {
    if (json['teams'] != null) {
      json['teams'].forEach((v) {
        teams.add(Team.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['teams'] = teams.map((v) => v.toJson()).toList();
      return data;
  }
}

class Team {
  int id;
  String name;
  String desc;
  String job;
  String image;
  String speciality;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  //String contribution;

  Team({
    required this.id,
    required this.name,
    required this.desc,
    required this.job,
    required this.image,
    required this.speciality,
    required this.twitterUrl,
    required this.linkedinUrl,
    required this.githubUrl,
    //this.contribution
  });

  Team.fromJson(Map<String, dynamic> json) :
    id = json['id'] ?? 0,
    name = json['name'] ?? '',
    desc = json['desc'] ?? '',
    job = json['job'] ?? '',
    image = json['image'] ?? '',
    speciality = json['speciality'] ?? '',
    twitterUrl = json['twitter_url'] ?? '',
    linkedinUrl = json['linkedin_url'] ?? '',
    githubUrl = json['github_url'] ?? '' {
    //contribution = json['contribution'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['desc'] = desc;
    data['job'] = job;
    data['image'] = image;
    data['speciality'] = speciality;
    data['twitter_url'] = twitterUrl;
    data['linkedin_url'] = linkedinUrl;
    data['github_url'] = githubUrl;
    //data['contribution'] = this.contribution;
    return data;
  }
}

List<Team> teams = [
  Team(
    id: 1,
    name: "Hendrix Tavarez",
    desc: "Lead Organizer",
    job: "Lead Organizer",
    speciality: "Organization",
    //contribution: "Google CEO",
    image: "https://devfestflorida.org/images/people/hendrix_tavarez.jpg",
    twitterUrl: "https://twitter.com/htavarez",
    linkedinUrl: "https://www.linkedin.com/in/hendrixtavarez",
    githubUrl: "https://github.com/lockerfish",
  ),
  Team(
    id: 2,
    name: "Michael Rosario",
    desc: "Organizer",
    job: "Organizer",
    speciality: "Logistics and travels",
    //contribution: "Logistics and travels",
    image: "https://devfestflorida.org/images/people/michael_rosario.jpg",
    twitterUrl: "https://twitter.com/michaelrosario",
    linkedinUrl: "https://www.linkedin.com/in/michaelprosario",
    githubUrl: "https://github.com/",
  ),
  Team(
    id: 3,
    name: "Siva G",
    desc: "Organizer",
    job: "Organizer",
    speciality: "Founder",
    //contribution: "Founder",
    image: "https://devfestflorida.org/images/people/siva_g.jpg",
    twitterUrl: "https://twitter.com/devfestfl/",
    linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
    githubUrl: "https://github.com/",
  ),
  Team(
    id: 4,
    name: "Christi Kapp",
    desc: "Organizer",
    job: "Organizer",
    speciality: "Logistics",
    //contribution: "Logistics",
    image: "https://devfestflorida.org/images/people/christi_kapp.png",
    twitterUrl: "https://twitter.com/devfestfl/",
    linkedinUrl: "https://www.linkedin.com/in/artinmotionllc/",
    githubUrl: "https://github.com/",
  ),
  Team(
    id: 5,
    name: "Anita Kirkovska",
    desc: "Organizer",
    job: "Organizer",
    speciality: "Logistics",
    //contribution: "Logistics",
    image: "https://devfestflorida.org/images/people/anita_kirkovska.jpg",
    twitterUrl: "https://twitter.com/anitakirkovska",
    linkedinUrl: "https://www.linkedin.com/in/anitakirkovska",
    githubUrl: "https://github.com/",
  ),
  Team(
    id: 6,
    name: "Marina Trajkovska",
    desc: "Organizer",
    job: "Organizer",
    speciality: "Logistics",
    //contribution: "Logistics",
    image: "https://devfestflorida.org/images/people/marina_trajkovska.jpg",
    twitterUrl: "https://twitter.com/marinatrajk",
    linkedinUrl: "https://www.linkedin.com/in/marinatrajk/",
    githubUrl: "https://github.com/",
  ),
  Team(
    id: 7,
    name: "Javier Carrion",
    desc: "Organizer",
    job: "Organizer",
    speciality: "Social",
    //contribution: "Social",
    image: "https://devfestflorida.org/images/people/javier_carrion.jpg",
    twitterUrl: "https://twitter.com/seetechnologic",
    linkedinUrl: "https://www.linkedin.com/in/technologic/",
    githubUrl: "https://github.com/JavaVista",
  ),
];
