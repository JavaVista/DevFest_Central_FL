class SessionsData {
  List<Session> sessions;

  SessionsData({this.sessions});

  SessionsData.fromJson(Map<String, dynamic> json) {
    if (json['sessions'] != null) {
      sessions = new List<Session>();
      json['sessions'].forEach((v) {
        sessions.add(Session.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sessions != null) {
      data['sessions'] = this.sessions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Session {
  int sessionId;
  String sessionTitle;
  String sessionDesc;
  String sessionImage;
  String sessionStartTime;
  String sessionTotalTime;
  String sessionLink;
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String track;

  Session({
    this.sessionId,
    this.sessionTitle,
    this.sessionDesc,
    this.sessionImage,
    this.sessionStartTime,
    this.sessionTotalTime,
    this.sessionLink,
    this.speakerName,
    this.speakerDesc,
    this.speakerImage,
    this.speakerInfo,
    this.speakerId,
    this.track,
  });

  Session.fromJson(Map<String, dynamic> json) {
    sessionId = json['session_id'];
    sessionTitle = json['session_title'];
    sessionDesc = json['session_desc'];
    sessionImage = json['session_image'];
    sessionStartTime = json['session_start_time'];
    sessionTotalTime = json['session_total_time'];
    sessionLink = json['session_link'];
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    track = json['track'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_id'] = this.sessionId;
    data['session_title'] = this.sessionTitle;
    data['session_desc'] = this.sessionDesc;
    data['session_image'] = this.sessionImage;
    data['session_start_time'] = this.sessionStartTime;
    data['session_total_time'] = this.sessionTotalTime;
    data['session_link'] = this.sessionLink;
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['track'] = this.track;
    return data;
  }
}

//*  Sessions hardcoded data
final desc = "Presentation TBD";
final activity =
    "Activity!\n\nEat, drink, network, learn and most of all have fun";

//* Tracks can be web, mobile and startups (Make it web if the track type is not clear.)
List<Session> sessions = [
  Session(
    sessionId: 1,
    sessionStartTime: "9:00 AM",
    sessionTotalTime: "60 Mins",
    sessionTitle: "Doors Open + Breakfast + Networking",
    sessionDesc: activity,
    speakerImage: "https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "Welcome",
    speakerDesc: "Welcome to DevFest Florida",
    track: "other",
  ),
  Session(
    sessionId: 2,
    sessionStartTime: "10:00 AM",
    sessionTotalTime: "60 Mins",
    sessionTitle: "Welcome Remarks (15m) + Keynote (30m)",
    sessionDesc: activity,
    speakerImage: "https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "Welcome",
    speakerDesc: "Keynote DevFest Florida",
    track: "other",
  ),
  // 11:00 AM - 11:50 AM
  Session(
    sessionId: 3,
    sessionStartTime: "11:00 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Help Keep the Internet Safe with WebAuthn",
    sessionDesc:
        "Account takeovers continue to be part of major cyber security incidents. Decades of password education haven't helped, and probably made things worse. Email and password lists numbering into the billions have shown up on the dark web. Phishing campaigns have become more targeted and more effective than ever. Sometimes it seems like we're losing the battle.\n\nThere is hope, though! The WebAuthn protocol provides a stronger, easier way for users to authenticate themselves. It uses secure hardware and asymmetric cryptography to provide a strong addition to passwords, or a complete replacement. Best of all, it's easy to implement, and already supported by services you're using today.\n\nCome to this talk to learn how WebAuthn works, how you can use it to protect your accounts, and how to add support to your software. WebAuthn is a powerful tool to help keep the Internet safe, but it's up to us to use it.",
    speakerImage: "https://devfestflorida.org/images/people/jen_tong.jpg",
    speakerName: "Jen Tong",
    speakerDesc: "Security Advocate, Google",
    track: "web",
  ),
  Session(
    sessionId: 4,
    sessionStartTime: "11:00 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "What is new with Android 10 UI",
    sessionDesc:
        "New UI Features are the most visible changes to your app users. As the OS and the other apps move forward, your app can easily left out with a broken experience.\n\nCome to this talk to learn more about new UI features that can make your application stand out. You’ll learn how to implement the new Android Q UI features that will bring your app’s User Experience to a new level.",
    speakerImage:
        "https://pbs.twimg.com/profile_images/1123009913679011840/lb-cCjyA_400x400.png",
    speakerName: "Murat Yener",
    speakerDesc: "Developer Advocate for Android at Google.",
    track: "mobile",
  ),
  Session(
    sessionId: 5,
    sessionStartTime: "11:00 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "How companies internally innovate",
    sessionDesc:
        "Vanessa Zabala is the Director of Impact Development for the Orlando Economic Partnership, leading the organization’s internal intrapreneurship initiatives and deploying innovation capacity programs to external stakeholders.\n\nCurrently, she is an adjunct professor at Rollins College teaching intrapreneurship. As an active member in the community, she is on the board of Rebuild Globally, West Lakes Partnership, and the Chair of conferences for the Organization of Women in International Trade.",
    speakerImage: "https://devfestflorida.org/images/people/vanessa_zabala.jpg", //"https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "Vanessa Zabala",
    speakerDesc:
        "Director of Impact Development for the Orlando Economic Partnership.",
    track: "startup",
  ),
  // 11:50 AM - 12:30 AM
  Session(
    sessionId: 6,
    sessionStartTime: "11:50 AM",
    sessionTotalTime: "20 Mins",
    sessionTitle: "Mind-Reading with Adaptive and Intelligent User Interfaces",
    sessionDesc:
        "What if you could predict user behavior with smart UIs?\n\nIn this talk, we will explore how we can make adaptive and intelligent user interfaces that learn from how individual users use your apps, and personalize the interface and features just for them, in real-time. With probability-driven statecharts, decision trees reinforcement learning and more, UIs can be developed in such a way that it automatically adapts to the user's behavior.",
    speakerImage:
        "https://devfestflorida.org/images/people/david_khourshid.jpg",
    speakerName: "David Khourshid",
    speakerDesc: "Software Engineer, Microsoft",
    track: "web",
  ),
  Session(
    sessionId: 7,
    sessionStartTime: "11:50 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Getting Started with ARCore",
    sessionDesc:
        "What's new with Google ARCore: In the future, imagine using an AR app to plan and layout furniture in a space. Imagine how biology students might use an AR app to explore 3D cell structures or processes. What would it be like to make the real world a level for your next game?\n\nAll of these scenarios become possible with Google ARCore. In this talk, we'll walk through the process of building an ARCore app using Unity, C#, and the AR Core SDK. We'll also explore ways web developers can build AR apps.",
    speakerImage:
        "https://devfestflorida.org/images/people/michael_rosario.jpg",
    speakerName: "Michael Rosario",
    speakerDesc: "Senior software engineer, Design Interactive",
    track: "mobile",
  ),
  Session(
    sessionId: 8,
    sessionStartTime: "11:50 AM",
    sessionTotalTime: "20 Mins",
    sessionTitle: "Leading Lady: Leading A Team with Happiness",
    sessionDesc:
        "Leading a team of developers is, most assuredly, not a cake walk. But how do we make every moment as sweet as possible? How can you as a leader on your team, whether on the team or as management create an environment that is fruitful for yourself, your direct manager, and your team?\n\nThis interactive talk will include audience bug fixes (via CodePen), anecdotes, tips, and overall -- happiness. ",
    speakerImage: "https://devfestflorida.org/images/people/jenell_pizarro.jpg",
    speakerName: "Jenell Pizarro",
    speakerDesc: "UX Developer, Capco",
    track: "startup",
  ),
  // 12:30 PM - 01:30 PM
  Session(
    sessionId: 9,
    sessionStartTime: "12:40 PM",
    sessionTotalTime: "60 Mins",
    sessionTitle: "Lunch",
    sessionDesc: activity,
    speakerImage: "https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "Lunch",
    speakerDesc: "Lunch DevFest Florida",
    track: "other",
  ),
  // 01:30 PM - 02:40 PM
  Session(
    sessionId: 10,
    sessionStartTime: "1:30 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Serverless Containers with Knative and Cloud Run",
    sessionDesc:
        "When you build a serverless app, you either tie yourself to a cloud provider, or you end up building your own serverless stack. Knative provides a better choice.\n\nOpen-source Knative extends Kubernetes to provide a set of middleware components for container-based serverless apps that can run anywhere. In this talk, we’ll explore Knative components (serving, eventing, build) and also take a look at its managed cousin Cloud Run on Google Cloud.",
    speakerImage:
        "https://storage.googleapis.com/hoverboard-experimental.appspot.com/images/people/optim/mete_atamel.jpg",
    speakerName: "Mete Atamel",
    speakerDesc: "Developer Advocate, Google",
    track: "web",
  ),
  Session(
    sessionId: 11,
    sessionStartTime: "1:30 PM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Cloud IoT - Bringing Machine Learning to the Edge",
    sessionDesc:
        "IoT applications want to take advantage of the intelligent cloud and the intelligent edge. Cloud IoT Edge, Edge TPU and Cloud IoT Core are opening up completely new possibilities with IoT. With powerful data processing and ML capabilities at the edge, devices such as robotic arms, wind turbines and smart cars can now act on the data from their sensors in real time and predict outcomes locally.\n\nIn this session, we will walk  through training a machine learning model with data collected from IoT devices in the cloud, deploying that model to Cloud IoT Edge device and run on the device through the power of the Edge TPU hardware accelerator.",
    speakerImage:
        "https://devfestflorida.org/images/people/sivamuthu_kumar.jpg",
    speakerName: "Sivamuthu Kumar",
    speakerDesc: "Software architect, Computer Enterprises Inc",
    track: "mobile",
  ),
  Session(
    sessionId: 12,
    sessionStartTime: "1:30 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Getting your product on the market",
    sessionDesc: "Getting your product on the market",
    speakerImage: "https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "TBD",
    speakerDesc: "Fireside Chat:",
    track: "startup",
  ),
  // 02:40 PM - 03:30 PM
  Session(
    sessionId: 13,
    sessionStartTime: "2:40 PM",
    sessionTotalTime: "20 Mins",
    sessionTitle:
        "Demistytifying PWAs: How to Create Native-like Apps with JavaScript",
    sessionDesc:
        "Stop me if you have heard this one before, We need a website, an iOS, and an android app! But, we don't have that many developers. It's tough knowing three languages and ecosystems just to get your app in front of all your users. What if there was a better way?\n\nProgressive Web Apps could be the solution to your app woes. PWAs are cross-platform, searchable, opt-in apps that can provide native-like experiences using web technology (JS, React, Vue, etc). This talk is going to not only explain what a PWA is, but when you should make one and how to do so easily with your existing skills!",
    speakerImage: "https://devfestflorida.org/images/people/lee_warrick.jpg",
    speakerName: "Lee Warrick,",
    speakerDesc: "Front-end developer, Realtruck.com",
    track: "web",
  ),
  Session(
    sessionId: 14,
    sessionStartTime: "2:40 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Are you prepared for the next type of search?",
    sessionDesc:
        "Voice is quickly becoming the new standard for search and most businesses are not ready for it. Using Actions on Google, developers are able to design, build, and distribute fully-customizable conversational applications.\n\nActions on Google is a developer platform that lets you create software to extend the functionality of the Google Assistant, Google’s virtual personal assistant, across more than 500 million devices, including smart speakers, phones, cars, TVs, headphones, watches, and much more. In this session, you’ll learn the fundamentals needed for building Actions on Google, including Voice UI (VUI) & conversational design, what tools are available, some resources to get you started, and more!",
    speakerImage: "https://devfestflorida.org/images/people/kyle_paul.jpg",
    speakerName: "Kyle Paul",
    speakerDesc: "Software architect, Google",
    track: "mobile",
  ),
  Session(
    sessionId: 15,
    sessionStartTime: "2:40 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "A Startup story - Moving from Angular to Flutter",
    sessionDesc:
        "Rody Davis - CrossMedia LLC and João Luiz S. Kestering - Modus Create are also the Co-founders and Software Engineers of Ampstor.\n\nThis talk will explore a real world application built with Angular and moved to a Flutter implementation on iOS/Android/web with one codebase.\n\nWe will also explore how to leverage Amp for creating Amp stories.",
    speakerImage: "https://devfestflorida.org/images/people/rody_davis.jpg",
    speakerName: "Rody Davis and João Luiz S. Kestering",
    speakerDesc: "Co-founders and Software Engineers, Ampstor",
    track: "startup",
  ),
  // 03:30 PM - 03:50 PM
  Session(
    sessionId: 16,
    sessionStartTime: "3:30 PM",
    sessionTotalTime: "60 Mins",
    sessionTitle: "Break",
    sessionDesc: desc,
    speakerImage: "https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "Break",
    speakerDesc: "Break DevFest Florida",
    track: "other",
  ),
  // 03:50 PM - 04:40 PM
  Session(
    sessionId: 17,
    sessionStartTime: "3:50 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Creating real time applications with Angular and Firebase",
    sessionDesc:
        "In this talk you'll learn how you can Firebase to add a backend to your Angular application very quickly. We can store and synchronize data in real time, authenticate users, develop additional functionalities with cloud functions, host and deploy and much more!\n\nCome see why Angular and Firebase is a combination that is on Fire!",
    speakerImage: "https://devfestflorida.org/images/people/loiane_groner.jpg",
    speakerName: "Loiane Groner",
    speakerDesc: "Business Analyst and Senior Developer, Citibank",
    track: "web",
  ),
  Session(
    sessionId: 18,
    sessionStartTime: "3:50 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Machine Learning for everybody",
    sessionDesc:
        "You've been hearing about Machine Learning for years now, but you don't know where to start, you've tried online courses but still don't know what to do!\n\nIn this presentation, I'll walk you through what it actually means to do Machine Learning, and how you can get started using simple projects that start your journey in Machine Learning.",
    speakerImage: "https://devfestflorida.org/images/people/faisal_abid.jpg",
    speakerName: "Faisal Abid",
    speakerDesc: "Co-Founder, dydx.dev",
    track: "mobile",
  ),
  Session(
    sessionId: 19,
    sessionStartTime: "3:50 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Building your startup in Orlando",
    sessionDesc:
        "Panel: Building your startup in Orlando.\n\nPatrick VanDusen - Founder Viewstub, Gio Punzo - Founder Streann Media and Moderator: Anita Kirkovska",
    speakerImage: "https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "Patrick VanDusen and Gio Punzo",
    speakerDesc:
        "Patrick VanDusen - Founder Viewstub and Gio Punzo - Founder Streann Media",
    track: "startup",
  ),
// 04:40 PM - 05:30 PM
  Session(
    sessionId: 20,
    sessionStartTime: "4:40 PM",
    sessionTotalTime: "20 Mins",
    sessionTitle:
        "Securing Sensitive Data with Google Cloud's Data Loss Prevention API",
    sessionDesc:
        "Every organization has sensitive data they must protect: from addresses and credit card numbers to medical patient records and intellectual property, the list goes on. These types of info are typically referred to as personally identifiable information (PII) or protected health information (PHI).\n\nFor businesses with this data, securing the network is just half the fun. What happens if a bad actor is already inside your network and starts poking around the data? You need some way of disguising, or obfuscating, the data in such a way that it’s unidentifiable to unauthorized eyes. In this talk, Zach will present his best practices for securing PII with Google Cloud's Data Loss Prevention API.",
    speakerImage: "https://devfestflorida.org/images/people/zach_sais.jpg",
    speakerName: "Zach Sais",
    speakerDesc: "Customer Engineer, Google",
    track: "web",
  ),
  Session(
    sessionId: 21,
    sessionStartTime: "4:40 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Presentation TBD",
    sessionDesc: desc,
    speakerImage: "https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "TBD",
    speakerDesc: desc,
    track: "mobile",
  ),
  Session(
    sessionId: 22,
    sessionStartTime: "11:50 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Pair Programming is a skill worth developing",
    sessionDesc:
        "Pair Programming usually gets a bad rap from people who have only tried it for a few days while onboarding at a new company and then were left alone from then on. Like many things, there are best practices for pair programming, and concrete skills to learn that will improve the quality of your code and time to completion.",
    speakerImage:
        "https://devfestflorida.org/images/people/cassidy_swallow.jpg",
    speakerName: "Cassidy Swallow",
    speakerDesc: "Android Developer, Pluralsight",
    track: "startup",
  ),
// 05:30 PM - 06:00 PM
  Session(
    sessionId: 23,
    sessionStartTime: "5:30 PM",
    sessionTotalTime: "60 Mins",
    sessionTitle: "Closing Remarks (15m) + After Party (30m)",
    sessionDesc: activity,
    speakerImage: "https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "Thank you!",
    speakerDesc: "Closing Remarks and After Party DevFest Florida",
    track: "other",
  ),
  // extra
  Session(
    sessionId: 24,
    sessionStartTime: "3:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Mobile Database Persistence",
    sessionDesc: desc,
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqEG002BsGCqZLZRFUGu9xo4IpGamz6gTqlWxWyME0s-n8gR7Rs0tM5R6mPMOCRYf5rAunWx0GQeXDUHPag_XWGApdekw.cks8tPlPy-TeucOT",
    speakerName: "Eric Maxwell",
    speakerDesc: "Software Developer, Big Nerd Ranch",
    track: "not done",
  ),
  Session(
    sessionId: 25,
    sessionStartTime: "4:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Progressive Experience Web Development",
    sessionDesc: desc,
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXBET0RKT0JBV195UjVuSDRKS3JEenphN2gzLW80WEdvenlGdkZhNGREUzFmQUk1RjJnR0N5eEJIdlBkOVhlLUdwalVSWXlxbXJ4VFA0QXRZdnB4WDllWFNpdmdiNy14Q0tLOENCeU41Yks4NF9vUVQ0LlVFY0RBeld0ZTd4OEtSUTg",
    speakerName: "Yohan Totting",
    speakerDesc: "Web Developer Advocate, Google",
    track: "not done",
  ),
  Session(
    sessionId: 26,
    sessionStartTime: "5:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Kotlin Coroutines",
    sessionDesc: desc,
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9XdVlxYUljN0RsYm1kejJaZFpkNENVMm1aTWhxU3VhNEtTVEoza3lBYVpDdGJsei1tSFB2ajNDc2FuZEdBbmNOMGlPZGtWRkJicHR6S1R0UVYxc1V2bXk0TWlBbnItWG00a3ZZc0laZ3VmVkg4NU5vLm1jNWdnX1pEZV8yT2FDalM",
    speakerName: "Svetlana Isakova",
    speakerDesc: "Developer Advocate, Jetbrain",
    track: "not done",
  ),
];
