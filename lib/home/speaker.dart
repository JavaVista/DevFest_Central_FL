class SpeakersData {
  List<Speaker> speakers;

  SpeakersData({this.speakers});

  SpeakersData.fromJson(Map<String, dynamic> json) {
    if (json['speakers'] != null) {
      speakers = new List<Speaker>();
      json['speakers'].forEach((v) {
        speakers.add(Speaker.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.speakers != null) {
      data['speakers'] = this.speakers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Speaker {
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String linkUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String speakerSession;
  String sessionId;

  Speaker(
      {this.speakerName,
      this.speakerDesc,
      this.speakerImage,
      this.speakerInfo,
      this.speakerId,
      this.linkUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.speakerSession,
      this.sessionId});

  Speaker.fromJson(Map<String, dynamic> json) {
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    linkUrl = json['link_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    speakerSession = json['speaker_session'];
    sessionId = json['session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['link_url'] = this.linkUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['speaker_session'] = this.speakerSession;
    data['session_id'] = this.sessionId;
    return data;
  }
}

//*  Speaker hardcoded data
List<Speaker> speakers = [
  Speaker(
    speakerSession: "Machine Learning for everybody",
    speakerImage: "https://devfestflorida.org/images/people/faisal_abid.jpg",
    speakerName: "Faisal Abid",
    speakerDesc: "Co-Founder, dydx.dev",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/FaisalAbid",
    linkedinUrl: "https://www.linkedin.com/in/faisalabid/",
    twitterUrl: "https://twitter.com/FaisalAbid",
  ),
  Speaker(
    speakerSession: "Serverless Containers with Knative and Cloud Run",
    speakerImage:
        "https://storage.googleapis.com/hoverboard-experimental.appspot.com/images/people/optim/mete_atamel.jpg",
    speakerName: "Mete Atamel",
    speakerDesc: "Developer Advocate, Google",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/meteatamel",
    linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
    twitterUrl: "https://twitter.com/meteatamel",
  ),
  Speaker(
    speakerSession: "A Startup story - Moving from Angular to Flutter",
    speakerImage: "https://devfestflorida.org/images/people/rody_davis.jpg",
    speakerName: "Rody Davis",
    speakerDesc: "Full stack mobile developer, CrossMedia LLC",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/AppleEducate",
    linkedinUrl: "https://www.linkedin.com/in/rodydavis/",
    twitterUrl: "https://twitter.com/rodydavis",
  ),
  Speaker(
    speakerSession: "Creating real time applications with Angular and Firebase",
    speakerImage: "https://devfestflorida.org/images/people/loiane_groner.jpg",
    speakerName: "Loiane Groner",
    speakerDesc: "Business Analyst and Senior Developer, Citibank",
    linkUrl: "https://loiane.com/",
    githubUrl: "https://github.com/",
    linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
    twitterUrl: "https://twitter.com/loiane",
  ),
  Speaker(
    speakerSession: "??",
    speakerImage: "https://devfestflorida.org/images/people/dylan_israel.jpg",
    speakerName: "Dylan Israel",
    speakerDesc: "Senior Software Engineer, PricewaterhouseCoopers",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/PizzaPokerGuy",
    linkedinUrl: "https://www.linkedin.com/in/dylan310/",
    twitterUrl: "https://twitter.com/PizzaPokerGuy",
  ),
  Speaker(
    speakerSession: "A Startup story - Moving from Angular to Flutter",
    speakerImage: "https://devfestflorida.org/images/people/joao_kestering.jpg",
    speakerName: "João Luiz S. Kestering",
    speakerDesc: "Senior Software Engineer, Modus Create",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/joaoluizSK",
    linkedinUrl: "https://www.linkedin.com/in/joao-luiz-s-kestering-4883a543/",
    twitterUrl: "https://twitter.com/devfestfl/",
  ),
  Speaker(
    speakerSession:
        "Mind-Reading with Adaptive and Intelligent User Interfaces",
    speakerImage:
        "https://devfestflorida.org/images/people/david_khourshid.jpg",
    speakerName: "David Khourshid",
    speakerDesc: "Software Engineer, Microsoft",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/davidkpiano",
    linkedinUrl: "https://www.linkedin.com/in/davidkpiano/",
    twitterUrl: "https://twitter.com/DavidKPiano",
  ),
  Speaker(
    speakerSession: "Cloud IoT - Bringing Machine Learning to the Edge",
    speakerImage:
        "https://devfestflorida.org/images/people/sivamuthu_kumar.jpg",
    speakerName: "Sivamuthu Kumar",
    speakerDesc: "Software architect, Computer Enterprises Inc",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/ksivamuthu",
    linkedinUrl: "https://www.linkedin.com/in/ksivamuthu/",
    twitterUrl: "https://twitter.com/ksivamuthu",
  ),
  Speaker(
    speakerSession: "Are you prepared for the next type of search?",
    speakerImage: "https://devfestflorida.org/images/people/kyle_paul.jpg",
    speakerName: "Kyle Paul",
    speakerDesc: "Software architect, Google",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/neojato",
    linkedinUrl: "https://www.linkedin.com/in/kylepaul/",
    twitterUrl: "https://twitter.com/kpaul86",
  ),
  Speaker(
    speakerSession: "Leading Lady: Leading A Team with Happiness",
    speakerImage: "https://devfestflorida.org/images/people/jenell_pizarro.jpg",
    speakerName: "Jenell Pizarro",
    speakerDesc: "UX Developer, Capco",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/nellarro",
    linkedinUrl: "https://www.linkedin.com/in/jenell-pizarro/",
    twitterUrl: "https://twitter.com/nellarro",
  ),
  Speaker(
    speakerSession:
        "Securing Sensitive Data with Google Cloud's Data Loss Prevention API",
    speakerImage: "https://devfestflorida.org/images/people/zach_sais.jpg",
    speakerName: "Zach Sais",
    speakerDesc: "Customer Engineer, Google",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/zsais",
    linkedinUrl: "https://www.linkedin.com/in/zachsais/",
    twitterUrl: "https://twitter.com/devfestfl/",
  ),
  Speaker(
    speakerSession: "Pair Programming is a skill worth developing",
    speakerImage:
        "https://devfestflorida.org/images/people/cassidy_swallow.jpg",
    speakerName: "Cassidy Swallow",
    speakerDesc: "Android Developer, Pluralsight",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://www.github.com/cantocass",
    linkedinUrl: "https://www.linkedin.com/in/cassidyswallow",
    twitterUrl: "https://twitter.com/CantoCass",
  ),
  Speaker(
    speakerSession: "Help Keep the Internet Safe with WebAuthn",
    speakerImage: "https://devfestflorida.org/images/people/jen_tong.jpg",
    speakerName: "Jen Tong",
    speakerDesc: "Security Advocate, Google",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/mimming",
    linkedinUrl: "https://www.linkedin.com/in/mimming/",
    twitterUrl: "https://twitter.com/MimmingCodes",
  ),
  Speaker(
    speakerSession: "Getting Started with ARCore",
    speakerImage:
        "https://devfestflorida.org/images/people/michael_rosario.jpg",
    speakerName: "Michael Rosario",
    speakerDesc: "Senior software engineer, Design Interactive",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/michaelprosario",
    linkedinUrl: "https://www.linkedin.com/in/michaelprosario",
    twitterUrl: "https://www.twitter.com/michaelrosario",
  ),
  Speaker(
    speakerSession:
        "Demistytifying PWAs: How to Create Native-like Apps with JavaScript",
    speakerImage: "https://devfestflorida.org/images/people/lee_warrick.jpg",
    speakerName: "Lee Warrick",
    speakerDesc: "Front-end developer, Realtruck.com",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/",
    linkedinUrl: "https://www.linkedin.com/in/lee-warrick",
    twitterUrl: "https://twitter.com/leewarrickjr",
  ),
  Speaker(
    speakerSession: "What is new with Android 10 UI",
    speakerImage:
        "https://pbs.twimg.com/profile_images/1123009913679011840/lb-cCjyA_400x400.png",
    speakerName: "Murat Yener",
    speakerDesc: "Developer Advocate for Android at Google.",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/",
    linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
    twitterUrl: "https://twitter.com/yenerm",
  ),
  Speaker(
    speakerSession: "How companies internally innovate",
    speakerImage: "https://devfestflorida.org/images/people/vanessa_zabala.jpg", //"https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "Vanessa Zabala",
    speakerDesc:
        "Director of Impact Development for the Orlando Economic Partnership.",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/",
    linkedinUrl: "https://www.linkedin.com/in/vanessazabala/",
    twitterUrl: "https://twitter.com/devfestfl/",
  ),
];
