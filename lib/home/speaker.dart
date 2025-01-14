class SpeakersData {
  List<Speaker> speakers;

  SpeakersData({required this.speakers});

  SpeakersData.fromJson(Map<String, dynamic> json) : speakers = [] {
    if (json['speakers'] != null) {
      json['speakers'].forEach((v) {
        speakers.add(Speaker.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['speakers'] = speakers.map((v) => v.toJson()).toList();
      return data;
  }
}

class Speaker {
  int sessionId;
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  int speakerId;
  String linkUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String speakerSession;
  String location;

  Speaker({
    required this.sessionId,
    required this.speakerName,
    required this.speakerDesc,
    required this.speakerImage,
    required this.speakerInfo,
    required this.speakerId,
    required this.linkUrl,
    required this.twitterUrl,
    required this.linkedinUrl,
    required this.githubUrl,
    required this.speakerSession,
    required this.location,
  });

  Speaker.fromJson(Map<String, dynamic> json)
      : sessionId = json['session_id'] ?? 0,
        speakerName = json['speaker_name'] ?? '',
        speakerDesc = json['speaker_desc'] ?? '',
        speakerImage = json['speaker_image'] ?? '',
        speakerInfo = json['speaker_info'] ?? '',
        speakerId = json['speaker_id'] ?? '',
        linkUrl = json['link_url'] ?? '',
        twitterUrl = json['twitter_url'] ?? '',
        linkedinUrl = json['linkedin_url'] ?? '',
        githubUrl = json['github_url'] ?? '',
        speakerSession = json['speaker_session'] ?? '',
        location = json['location'] ?? '';
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['session_id'] = sessionId;
    data['speaker_name'] = speakerName;
    data['speaker_desc'] = speakerDesc;
    data['speaker_image'] = speakerImage;
    data['speaker_info'] = speakerInfo;
    data['speaker_id'] = speakerId;
    data['link_url'] = linkUrl;
    data['twitter_url'] = twitterUrl;
    data['linkedin_url'] = linkedinUrl;
    data['github_url'] = githubUrl;
    data['speaker_session'] = speakerSession;
    data['location'] = location;
    return data;
  }
}

//*  Speaker hardcoded data
const communityRoom = "Community Room";
const webRoom = "Mythical Web 🕸";
const mobileRoom = "Sorcerer Mobile 📱";
const startupRoom = "Enchanted Startup 🔥";

List<Speaker> speakers = [
  Speaker(
      sessionId: 1,
      speakerSession: "Keynote - How companies internally innovate?",
      speakerImage:
          "https://devfestflorida.org/images/people/vanessa_zabala.jpg",
      speakerName: "Vanessa Zabala",
      speakerDesc:
          "Director of Impact Development for the Orlando Economic Partnership.",
      speakerInfo: "",
      speakerId: 1,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/",
      linkedinUrl: "https://www.linkedin.com/in/vanessazabala/",
      twitterUrl: "https://twitter.com/devfestfl/",
      location: webRoom),
  Speaker(
      sessionId: 2,
      speakerSession: "Help Keep the Internet Safe with WebAuthn",
      speakerImage: "https://devfestflorida.org/images/people/jen_tong.jpg",
      speakerName: "Jen Tong",
      speakerDesc: "Security Advocate, Google",
      speakerInfo: "",
      speakerId: 2,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/mimming",
      linkedinUrl: "https://www.linkedin.com/in/mimming/",
      twitterUrl: "https://twitter.com/MimmingCodes",
      location: webRoom),
  Speaker(
      sessionId: 3,
      speakerSession: "What is new with Android 10 UI",
      speakerImage:
          "https://pbs.twimg.com/profile_images/1123009913679011840/lb-cCjyA_400x400.png",
      speakerName: "Murat Yener",
      speakerDesc: "Developer Advocate for Android at Google.",
      speakerInfo: "",
      speakerId: 3,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/",
      linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
      twitterUrl: "https://twitter.com/yenerm",
      location: mobileRoom),
  Speaker(
      sessionId: 4,
      speakerSession:
          "(1) Demistytifying PWAs: How to Create Native-like Apps with JavaScript and (2) You don't deserve senior devs",
      speakerImage: "https://devfestflorida.org/images/people/lee_warrick.jpg",
      speakerName: "Lee Warrick",
      speakerDesc: "Front-end developer, Realtruck.com",
      speakerInfo: "",
      speakerId: 4,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/",
      linkedinUrl: "https://www.linkedin.com/in/lee-warrick",
      twitterUrl: "https://twitter.com/leewarrickjr",
      location: "(1) Sorcerer Mobile 📱 and (2) Enchanted Startup 🔥"),
  Speaker(
      sessionId: 5,
      speakerSession:
          "Mind-Reading with Adaptive and Intelligent User Interfaces",
      speakerImage:
          "https://devfestflorida.org/images/people/david_khourshid.jpg",
      speakerName: "David Khourshid",
      speakerDesc: "Software Engineer, Microsoft",
      speakerInfo: "",
      speakerId: 5,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/davidkpiano",
      linkedinUrl: "https://www.linkedin.com/in/davidkpiano/",
      twitterUrl: "https://twitter.com/DavidKPiano",
      location: webRoom),
  Speaker(
      sessionId: 6,
      speakerSession: "Getting Started with ARCore",
      speakerImage:
          "https://devfestflorida.org/images/people/michael_rosario.jpg",
      speakerName: "Michael Rosario",
      speakerDesc: "Senior software engineer, Design Interactive",
      speakerInfo: "",
      speakerId: 6,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/michaelprosario",
      linkedinUrl: "https://www.linkedin.com/in/michaelprosario",
      twitterUrl: "https://www.twitter.com/michaelrosario",
      location: mobileRoom),
  Speaker(
      sessionId: 7,
      speakerSession: "Leading Lady: Leading A Team with Happiness",
      speakerImage:
          "https://devfestflorida.org/images/people/jenell_pizarro.jpg",
      speakerName: "Jenell Pizarro",
      speakerDesc: "UX Developer, Capco",
      speakerInfo: "",
      speakerId: 7,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/nellarro",
      linkedinUrl: "https://www.linkedin.com/in/jenell-pizarro/",
      twitterUrl: "https://twitter.com/nellarro",
      location: startupRoom),
  Speaker(
      sessionId: 8,
      speakerSession: "Serverless Containers with Knative and Cloud Run",
      speakerImage:
          "https://storage.googleapis.com/hoverboard-experimental.appspot.com/images/people/optim/mete_atamel.jpg",
      speakerName: "Mete Atamel",
      speakerDesc: "Developer Advocate, Google",
      speakerInfo: "",
      speakerId: 8,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/meteatamel",
      linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
      twitterUrl: "https://twitter.com/meteatamel",
      location: webRoom),
  Speaker(
      sessionId: 9,
      speakerSession: "Cloud IoT - Bringing Machine Learning to the Edge",
      speakerImage:
          "https://devfestflorida.org/images/people/sivamuthu_kumar.jpg",
      speakerName: "Sivamuthu Kumar",
      speakerDesc: "Software architect, Computer Enterprises Inc",
      speakerInfo: "",
      speakerId: 9,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/ksivamuthu",
      linkedinUrl: "https://www.linkedin.com/in/ksivamuthu/",
      twitterUrl: "https://twitter.com/ksivamuthu",
      location: mobileRoom),
  Speaker(
      sessionId: 10,
      speakerSession: "Streann: The Batman & Robin startup strategy",
      speakerImage: "https://devfestflorida.org/images/people/gio_punzo.jpg",
      speakerName: "Gio Punzo",
      speakerDesc: "CEO and Co-Founder Streann Media",
      speakerInfo: "",
      speakerId: 10,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/",
      linkedinUrl: "https://www.linkedin.com/in/punzo/",
      twitterUrl: "https://twitter.com/devfestfl/",
      location: startupRoom),
  Speaker(
      sessionId: 11,
      speakerSession: "Streann: The Batman & Robin startup strategy",
      speakerImage:
          "https://devfestflorida.org/images/people/antonio_calderon.jpg",
      speakerName: "Antonio Calderón",
      speakerDesc: "CTO and Co-Founder Streann Media",
      speakerInfo: "",
      speakerId: 11,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/",
      linkedinUrl: "https://www.linkedin.com/in/antonio-calderon-82569632/",
      twitterUrl: "https://twitter.com/devfestfl/",
      location: startupRoom),
  Speaker(
      sessionId: 12,
      speakerSession:
          "ML Kit: On-device machine learning for mobile developers",
      speakerImage: "https://devfestflorida.org/images/people/erik_haddad.jpg",
      speakerName: "Erik Haddad",
      speakerDesc: "UX Engineer, Google",
      speakerInfo: "",
      speakerId: 12,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/erikhaddad",
      linkedinUrl: "https://www.linkedin.com/in/erikhaddad/",
      twitterUrl: "https://twitter.com/erikhaddad/",
      location: mobileRoom),
  Speaker(
      sessionId: 13,
      speakerSession:
          "How we built our product: Moving from Angular to Flutter",
      speakerImage: "https://devfestflorida.org/images/people/rody_davis.jpg",
      speakerName: "Rody Davis",
      speakerDesc: "Full stack mobile developer, CrossMedia LLC",
      speakerInfo: "",
      speakerId: 13,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/AppleEducate",
      linkedinUrl: "https://www.linkedin.com/in/rodydavis/",
      twitterUrl: "https://twitter.com/rodydavis",
      location: startupRoom),
  Speaker(
      sessionId: 14,
      speakerSession:
          "How we built our product: Moving from Angular to Flutter",
      speakerImage:
          "https://devfestflorida.org/images/people/joao_kestering.jpg",
      speakerName: "João Luiz S. Kestering",
      speakerDesc: "Senior Software Engineer, Modus Create",
      speakerInfo: "",
      speakerId: 14,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/joaoluizSK",
      linkedinUrl:
          "https://www.linkedin.com/in/joao-luiz-s-kestering-4883a543/",
      twitterUrl: "https://twitter.com/devfestfl/",
      location: startupRoom),
  Speaker(
      sessionId: 15,
      speakerSession:
          "Creating real time applications with Angular and Firebase",
      speakerImage:
          "https://devfestflorida.org/images/people/loiane_groner.jpg",
      speakerName: "Loiane Groner",
      speakerDesc: "Business Analyst and Senior Developer, Citibank",
      speakerInfo: "",
      speakerId: 15,
      linkUrl: "https://loiane.com/",
      githubUrl: "https://github.com/",
      linkedinUrl: "https://www.linkedin.com/company/devfestflorida/",
      twitterUrl: "https://twitter.com/loiane",
      location: webRoom),
  Speaker(
      sessionId: 16,
      speakerSession:
          "Machine Learning for everybody and Build Cross Platform Apps with Flutter",
      speakerImage: "https://devfestflorida.org/images/people/faisal_abid.jpg",
      speakerName: "Faisal Abid",
      speakerDesc: "Co-Founder, dydx.dev",
      speakerInfo: "",
      speakerId: 16,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/FaisalAbid",
      linkedinUrl: "https://www.linkedin.com/in/faisalabid/",
      twitterUrl: "https://twitter.com/FaisalAbid",
      location: mobileRoom),
  Speaker(
      sessionId: 17,
      speakerSession: "Panel: Startups Do's and Don'ts",
      speakerImage:
          "https://devfestflorida.org/images/people/patrick_vandusen.jpeg",
      speakerName: "Patrick VanDusen",
      speakerDesc: "Patrick VanDusen, Founder Viewstub",
      speakerInfo: "",
      speakerId: 17,
      linkUrl: "https://viewstub.com/",
      githubUrl: "https://github.com/",
      linkedinUrl: "https://www.linkedin.com/in/patrickvandusen/",
      twitterUrl: "https://twitter.com/ViewStub",
      location: startupRoom),
  Speaker(
      sessionId: 18,
      speakerSession:
          "Securing Sensitive Data with Google Cloud's Data Loss Prevention API",
      speakerImage: "https://devfestflorida.org/images/people/zach_sais.jpg",
      speakerName: "Zach Sais",
      speakerDesc: "Customer Engineer, Google",
      speakerInfo: "",
      speakerId: 18,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/zsais",
      linkedinUrl: "https://www.linkedin.com/in/zachsais/",
      twitterUrl: "https://twitter.com/devfestfl/",
      location: mobileRoom),
  Speaker(
      sessionId: 19,
      speakerSession: "Are you prepared for the next type of search?",
      speakerImage: "https://devfestflorida.org/images/people/kyle_paul.jpg",
      speakerName: "Kyle Paul",
      speakerDesc: "Software architect, Google",
      speakerInfo: "",
      speakerId: 19,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/neojato",
      linkedinUrl: "https://www.linkedin.com/in/kylepaul/",
      twitterUrl: "https://twitter.com/kpaul86",
      location: webRoom),
  Speaker(
      sessionId: 20,
      speakerSession: "Pair Programming is a skill worth developing",
      speakerImage:
          "https://devfestflorida.org/images/people/cassidy_swallow.jpg",
      speakerName: "Cassidy Swallow",
      speakerDesc: "Android Developer, Pluralsight",
      speakerInfo: "",
      speakerId: 20,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://www.github.com/cantocass",
      linkedinUrl: "https://www.linkedin.com/in/cassidyswallow",
      twitterUrl: "https://twitter.com/CantoCass",
      location: startupRoom),
  Speaker(
      sessionId: 21,
      speakerSession: "Clean TypeScript & Testing",
      speakerImage: "https://devfestflorida.org/images/people/dylan_israel.jpg",
      speakerName: "Dylan C. Israel",
      speakerDesc: "Senior Software Engineer, PricewaterhouseCoopers",
      speakerInfo: "",
      speakerId: 21,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/PizzaPokerGuy",
      linkedinUrl: "https://www.linkedin.com/in/dylan310/",
      twitterUrl: "https://twitter.com/PizzaPokerGuy",
      location: webRoom),
  Speaker(
      sessionId: 22,
      speakerSession: "Panel: Startups Do's and Don'ts",
      speakerImage:
          "https://devfestflorida.org/images/people/dimitar_jovevski.jpg",
      speakerName: "Dimitar Jovevski, Ph.D.",
      speakerDesc: "Founder piksel.mk",
      speakerInfo: "",
      speakerId: 22,
      linkUrl: "https://devfestflorida.org",
      githubUrl: "https://github.com/",
      linkedinUrl: "https://www.linkedin.com/in/dimitar-jovevski/",
      twitterUrl: "https://twitter.com/devfestfl/",
      location: startupRoom),
];
