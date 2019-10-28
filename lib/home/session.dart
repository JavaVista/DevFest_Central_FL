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
  String sessionId;
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
final desc = "The async/await feature allows you to write the asynchronous code in a straightforward way," +
    "without a long list of callbacks. Used in C# for quite a while already, it has proven to be extremely useful.In Kotlin you have async and await as library functions implemented using coroutines." +
    "A coroutine is a light-weight thread that can be suspended and resumed later." +
    "Very precise definition, but might be confusing at first. What 'light-weight thread' means?" +
    "How does suspension work? This talk uncovers the magic. We'll discuss the concept of coroutines," +
    "the power of async/await, and how you can benefit from defining your asynchronous computations using suspend function." +
    " The content of this video was not produced or created by Google.";

//* Tracks can be web, mobile and startups (Make it web if the track type is not clear.)

List<Session> sessions = [
  Session(
    sessionId: "1",
    sessionStartTime: "9:00 AM",
    sessionTotalTime: "60 Mins",
    sessionTitle: "Doors Open + Breakfast + Networking",
    sessionDesc: desc,
    speakerImage:
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
    speakerName: "Welcome",
    speakerDesc: "Welcome to DevFest Florida",
    track: "other",
  ),
  Session(
    sessionId: "2",
    sessionStartTime: "10:00 AM",
    sessionTotalTime: "60 Mins",
    sessionTitle: "Welcome Remarks (15m) + Keynote (30m)",
    sessionDesc: desc,
    speakerImage:
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
    speakerName: "Welcome",
    speakerDesc: "Keynote DevFest Florida",
    track: "other",
  ),
  Session(
    sessionId: "3",
    sessionStartTime: "11:00 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle:  "What is new with Android 10 UI",
    sessionDesc: "New UI Features are the most visible changes to your app users. As the OS and the other apps move forward, your app can easily left out with a broken experience. Come to this talk to learn more about new UI features that can make your application stand out. You’ll learn how to implement the new Android Q UI features that will bring your app’s User Experience to a new level.",
    speakerImage:
        "https://pbs.twimg.com/profile_images/1123009913679011840/lb-cCjyA_400x400.png",
    speakerName: "Murat Yener",
    speakerDesc: "Developer Advocate for Android at Google.",
    track: "mobile",
  ),
  Session(
    sessionId: "4",
    sessionStartTime: "11:00 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Machine Learning for everybody",
    sessionDesc: "You've been hearing about Machine Learning for years now, but you don't know where to start, you've tried online courses but still don't know what to do!\nIn this presentation, I'll walk you through what it actually means to do Machine Learning, and how you can get started using simple projects that start your journey in Machine Learning. ",
    speakerImage:
        "https://devfestflorida.org/images/people/faisal_abid.jpg",
    speakerName: "Faisal Abid",
    speakerDesc: "Co-Founder, dydx.dev",
    track: "startup",
  ),
  Session(
    sessionId: "5",
    sessionStartTime: "11:00 AM",
    sessionTotalTime: "20 Mins",
    sessionTitle: "Mind-Reading with Adaptive and Intelligent User Interfaces",
    sessionDesc: "What if you could predict user behavior with smart UIs? In this talk, we will explore how we can make adaptive and intelligent user interfaces that learn from how individual users use your apps, and personalize the interface and features just for them, in real-time. With probability-driven statecharts, decision trees, reinforcement learning and more, UIs can be developed in such a way that it automatically adapts to the user's behavior.",
    speakerImage:
        "https://devfestflorida.org/images/people/david_khourshid.jpg",
    speakerName: "David Khourshid",
    speakerDesc: "Software Engineer, Microsoft",
    track: "web",
  ),
  Session(
    sessionId: "6",
    sessionStartTime: "11:30 AM",
    sessionTotalTime: "20 Mins",
    sessionTitle: "Why we switch Angular to Flutter?",
    sessionDesc: "It's a duo talk with Rody Davis about why we switched Angular to Flutter and why we took this decision based on the scope changes that we did during the MVPs for Ampstor.",
    speakerImage:
        "https://devfestflorida.org/images/people/joao_kestering.jpg",
    speakerName: "João Luiz S. Kestering",
    speakerDesc: "Senior Software Engineer, Modus Create",
    track: "web",
  ),
   Session(
    sessionId: "7",
    sessionStartTime: "11:30 AM",
    sessionTotalTime: "20 Mins",
    sessionTitle: "Leading Lady: Leading A Team with Happiness",
    sessionDesc: "Leading a team of developers is, most assuredly, not a cake walk. But how do we make every moment as sweet as possible? How can you as a leader on your team, whether on the team or as management create an environment that is fruitful for yourself, your direct manager, and your team?\nThis interactive talk will include audience bug fixes (via CodePen), anecdotes, tips, and overall -- happiness. ",
    speakerImage:
        "https://devfestflorida.org/images/people/jenell_pizarro.jpg",
    speakerName: "Jenell Pizarro",
    speakerDesc: "UX Developer, Capco",
    track: "startup",
  ),
  Session(
    sessionId: "8",
    sessionStartTime: "11:50 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Pair Programming is a skill worth developing",
    sessionDesc: "Pair Programming usually gets a bad rap from people who have only tried it for a few days while onboarding at a new company and then were left alone from then on. Like many things, there are best practices for pair programming, and concrete skills to learn that will improve the quality of your code and time to completion.",
    speakerImage:
        "https://devfestflorida.org/images/people/cassidy_swallow.jpg",
    speakerName: "Cassidy Swallow",
    speakerDesc: "Android Developer, Pluralsight",
    track: "startup",
  ),
  Session(
    sessionId: "9",
    sessionStartTime: "11:50 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Help Keep the Internet Safe with WebAuthn",
    sessionDesc: "Account takeovers continue to be part of major cyber security incidents. Decades of password education haven't helped, and probably made things worse. Email and password lists numbering into the billions have shown up on the dark web. Phishing campaigns have become more targeted and more effective than ever. Sometimes it seems like we're losing the battle.\nThere is hope, though! The WebAuthn protocol provides a stronger, easier way for users to authenticate themselves. It uses secure hardware and asymmetric cryptography to provide a strong addition to passwords, or a complete replacement. Best of all, it's easy to implement, and already supported by services you're using today.\nCome to this talk to learn how WebAuthn works, how you can use it to protect your accounts, and how to add support to your software. WebAuthn is a powerful tool to help keep the Internet safe, but it's up to us to use it.",
    speakerImage:
        "https://devfestflorida.org/images/people/jen_tong.jpg",
    speakerName: "Jen Tong",
    speakerDesc: "Security Advocate, Google",
    track: "web",
  ),
   Session(
    sessionId: "10",
    sessionStartTime: "12:40 PM",
    sessionTotalTime: "60 Mins",
    sessionTitle: "Lunch",
    sessionDesc: desc,
    speakerImage:
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
    speakerName: "Lunch",
    speakerDesc: "Lunch DevFest Florida",
    track: "other",
  ),
   Session(
    sessionId: "11",
    sessionStartTime: "1:30 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "How companies internally innovate",
    sessionDesc: "Vanessa Zabala: Vanessa Zabala is the Director of Impact Development for the Orlando Economic Partnership, leading the organization’s internal intrapreneurship initiatives and deploying innovation capacity programs to external stakeholders. Currently, she is an adjunct professor at Rollins College teaching intrapreneurship. As an active member in the community, she is on the board of Rebuild Globally, West Lakes Partnership, and the Chair of conferences for the Organization of Women in International Trade.",
    speakerImage:
        "https://i.stack.imgur.com/IHLNO.jpg",
    speakerName: "Vanessa Zabala",
    speakerDesc: "Director of Impact Development for the Orlando Economic Partnership.",
    track: "startup",
  ),
  Session(
    sessionId: "12",
    sessionStartTime: "1:30 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Serverless Containers with Knative and Cloud Run",
    sessionDesc: "When you build a serverless app, you either tie yourself to a cloud provider, or you end up building your own serverless stack. Knative provides a better choice. Open-source Knative extends Kubernetes to provide a set of middleware components for container-based serverless apps that can run anywhere. In this talk, we’ll explore Knative components (serving, eventing, build) and also take a look at its managed cousin Cloud Run on Google Cloud.",
    speakerImage:
        "https://storage.googleapis.com/hoverboard-experimental.appspot.com/images/people/optim/mete_atamel.jpg",
    speakerName: "Mete Atamel",
    speakerDesc: "Developer Advocate, Google",
    track: "web",
  ),
  Session(
    sessionId: "13",
    sessionStartTime: "2:20 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Top 5 from Firebase Summit '18",
    sessionDesc: desc,
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqZAYU9q0R5K2cq94DxU7ebiOMhilDlx5NzzsWWZ_oHxqcZV8H8j594rg_q_vyfTToA0BfScTHOHAj8uKf2OeF5MVqa_jmdjC9JO9-2TcPWjboxPf8.NN-XmkQxmHl1XyY_",
    speakerName: "Timothy Jordan",
    speakerDesc: "Sr. Staff Developer Advocate, Google",
    track: "not done",
  ),
  Session(
    sessionId: "14",
    sessionStartTime: "2:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Multiplayer Games with WebXR",
    sessionDesc: desc,
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJ2Zkg0YUY1ZFJoMFFRbWlqdFE4MV9nNTdJR0dxUS1ubVJfbkN2Y1RaS3VoaUp2dWd3ejNmUmJRekFQaU5QNGhqd1F6cUtKQXpYeXJkemVyS2hUY1NzSWloMXFCNzQzdmpRVVVmU0Z4XzJZRDVZQXVBLnFHVllKVmc2MUVzQVZ5bVI",
    speakerName: "Tanay Pant",
    speakerDesc: "Web Developer Advocate, Mozilla Foundation",
    track: "not done",
  ),
  Session(
    sessionId: "15",
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
    sessionId: "16",
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
    sessionId: "17",
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