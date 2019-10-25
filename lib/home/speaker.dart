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
    speakerDesc:
        "Developer Advocate at Google, focused on helping developers with Google Cloud.",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/meteatamel",
    linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
    twitterUrl: "https://twitter.com/meteatamel",
  ),
  Speaker(
    speakerSession: "??",
    speakerImage: "https://devfestflorida.org/images/people/rody_davis.jpg",
    speakerName: "Rody Davis",
    speakerDesc: "Full stack mobile developer, CrossMedia LLC",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/AppleEducate",
    linkedinUrl: "https://www.linkedin.com/in/rodydavis/",
    twitterUrl: "https://twitter.com/rodydavis",
  ),
  Speaker(
    speakerSession: "??",
    speakerImage:
        "https://devfestflorida.org/images/people/loiane_groner.jpg",
    speakerName: "Loiane Groner",
    speakerDesc: "Business Analyst and Senior Java/HTML5/JavaScript Developer, Citibank",
    linkUrl: "https://loiane.com/",
    githubUrl: "https://github.com/",
    linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
    twitterUrl: "https://twitter.com/loiane",
  ),
  Speaker(
    speakerSession: "??",
    speakerImage:
        "https://devfestflorida.org/images/people/dylan_israel.jpg",
    speakerName: "Dylan Israel",
    speakerDesc: "Senior Software Engineer, Price Waterhouse Coopers",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/PizzaPokerGuy",
    linkedinUrl: "https://www.linkedin.com/in/dylan310/",
    twitterUrl: "https://twitter.com/PizzaPokerGuy",
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
    speakerSession: "Pair Programming is a skill worth developing",
    speakerImage:
        "https://pbs.twimg.com/profile_images/1737828590/CassCropped_Web__400x400.jpg",
    speakerName: "Cassidy Swallow",
    speakerDesc: "Android Developer at Pluralsight",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/",
    linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
    twitterUrl: "https://twitter.com/cantocass",
  ),
  Speaker(
    speakerSession: "Leading Lady: Leading A Team with Happiness",
    speakerImage:
        "https://pbs.twimg.com/profile_images/1111460047547174913/B_6NmGd3_400x400.jpg",
    speakerName: "Jenell Pizarro",
    speakerDesc: "UX Developer and lead at Capco",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/",
    linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
    twitterUrl: "https://twitter.com/nellarro",
  ),
  Speaker(
    speakerSession: "How companies internally innovate",
    speakerImage: "https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "Vanessa Zabala",
    speakerDesc:
        "Director of Impact Development for the Orlando Economic Partnership.",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/",
    linkedinUrl: "https://www.linkedin.com/in/vanessazabala/",
    twitterUrl: "https://twitter.com/devfestfl/",
  ),
  Speaker(
    speakerSession:
        "Mind-Reading with Adaptive and Intelligent User Interfaces",
    speakerImage:
        "https://pbs.twimg.com/profile_images/619677584805208064/RwwbnNpi_400x400.jpg",
    speakerName: "David Khourshid",
    speakerDesc: "Software Engineer for Microsoft, a tech author, and speaker.",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/",
    linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
    twitterUrl: "https://twitter.com/davidkpiano",
  ),
  Speaker(
    speakerSession: "Help Keep the Internet Safe with WebAuthn",
    speakerImage:
        "https://d33wubrfki0l68.cloudfront.net/a95f98cfbb6e2703edc6db4f87502d93b1851760/927aa/events/2018-seattle/speakers/jen-tong.jpg",
    speakerName: "Jen Tong",
    speakerDesc: "Security Advocate on Google Cloud Platform",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/mimming",
    linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
    twitterUrl: "https://twitter.com/mimmingcodes",
  ),
  Speaker(
    speakerSession: "Why we switch Angular to Flutter?",
    speakerImage: "https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "João Luiz S. Kestering",
    speakerDesc:
        "Software Engineer on Modus Create with post-degree in Software Architecture",
    linkUrl: "https://devfestflorida.org",
    githubUrl: "https://github.com/",
    linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
    twitterUrl: "https://twitter.com/devfestfl/",
  ),
];
