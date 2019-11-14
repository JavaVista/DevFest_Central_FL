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
  String contentLevel;
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
  String location;

  Session({
    this.sessionId,
    this.sessionTitle,
    this.sessionDesc,
    this.contentLevel,
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
    this.location,
  });

  Session.fromJson(Map<String, dynamic> json) {
    sessionId = json['session_id'];
    sessionTitle = json['session_title'];
    sessionDesc = json['session_desc'];
    contentLevel = json['content_level'];
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
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_id'] = this.sessionId;
    data['session_title'] = this.sessionTitle;
    data['session_desc'] = this.sessionDesc;
    data['content_level'] = this.contentLevel;
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
    data['location'] = this.location;
    return data;
  }
}

//*  Sessions hardcoded data
final desc = "Presentation TBD";
final activity = "Community Room - Get your badge, coffee and meet new friends";
final peopleImage =
    "https://icon-library.net//images/users-icon-png/users-icon-png-8.jpg";
final personImage =
    "https://icon-library.net//images/user-icon-png-transparent/user-icon-png-transparent-27.jpg";
final contentLevel = "All Skills";
final communityRoom = "Community Room";
final webRoom = "Mythical Web 🕸";
final mobileRoom = "Sorcerer Mobile 📱";
final startupRoom = "Enchanted Startup 🔥";

//* Tracks can be web, mobile and startups (Make it web if the track type is not clear.)
List<Session> sessions = [
  Session(
    sessionId: 1,
    sessionStartTime: "9:00 AM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Registration & Morning Coffee 📝📛☕",
    sessionDesc:
        "Community Room:\nGet your badge, coffee and meet new friends.",
    contentLevel: contentLevel,
    speakerImage:
        "https://icon-library.net//images/registration-icon/registration-icon-3.jpg",
    speakerName: "Hi and Welcome 🙋‍♀️🙋🏿‍♂️!",
    speakerDesc: "Welcome to DevFest Florida",
    track: "other",
    location: communityRoom
  ),
  Session(
    sessionId: 2,
    sessionStartTime: "9:30 AM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Welcome Remarks 👋",
    sessionDesc: "The Devfest Florida's organizing team opening remarks.",
    contentLevel: contentLevel,
    speakerImage: peopleImage,
    speakerName: "DevFest Florida's organizing team",
    speakerDesc: "Welcome Remarks DevFest Florida",
    track: "other",
    location: webRoom
  ),
  Session(
    sessionId: 3,
    sessionStartTime: "10:00 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Keynote - How companies internally innovate?",
    contentLevel: contentLevel,
    sessionDesc:
        "Vanessa Zabala is the Director of Impact Development for the Orlando Economic Partnership, leading the organization’s internal intrapreneurship initiatives and deploying innovation capacity programs to external stakeholders.\n\nCurrently, she is an adjunct professor at Rollins College teaching intrapreneurship. As an active member in the community, she is on the board of Rebuild Globally, West Lakes Partnership, and the Chair of conferences for the Organization of Women in International Trade.",
    speakerImage: "https://devfestflorida.org/images/people/vanessa_zabala.jpg",
    speakerName: "Vanessa Zabala",
    speakerDesc:
        "Director of Impact Development for the Orlando Economic Partnership.",
    track: "other",
    location: webRoom
  ),
  // 11:00 AM - 11:50 AM
  Session(
    sessionId: 4,
    sessionStartTime: "11:00 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Serverless Containers with Knative and Cloud Run",
    sessionDesc:
        "When you build a serverless app, you either tie yourself to a cloud provider, or you end up building your own serverless stack. Knative provides a better choice.\n\nOpen-source Knative extends Kubernetes to provide a set of middleware components for container-based serverless apps that can run anywhere. In this talk, we’ll explore Knative components (serving, eventing, build) and also take a look at its managed cousin Cloud Run on Google Cloud.",
    contentLevel: 'Intermediate',
    speakerImage:
        "https://storage.googleapis.com/hoverboard-experimental.appspot.com/images/people/optim/mete_atamel.jpg",
    speakerName: "Mete Atamel",
    speakerDesc: "Developer Advocate, Google",
    track: "web",
    location: webRoom
  ),
  Session(
    sessionId: 5,
    sessionStartTime: "11:00 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "What is new with Android 10 UI",
    sessionDesc:
        "New UI Features are the most visible changes to your app users. As the OS and the other apps move forward, your app can easily left out with a broken experience.\n\nCome to this talk to learn more about new UI features that can make your application stand out. You’ll learn how to implement the new Android Q UI features that will bring your app’s User Experience to a new level.",
    contentLevel: 'Intermediate',
    speakerImage:
        "https://pbs.twimg.com/profile_images/1123009913679011840/lb-cCjyA_400x400.png",
    speakerName: "Murat Yener",
    speakerDesc: "Developer Advocate for Android at Google.",
    track: "mobile",
    location: mobileRoom
  ),
  Session(
    sessionId: 6,
    sessionStartTime: "11:00 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Startups Do's and Don'ts",
    sessionDesc:
        "Panel: Startups Do's and Don'ts.\n\nDimitar Jovevski, Ph.D. - Founder piksel.mk and Patrick VanDusen - Founder Viewstub",
    contentLevel: 'Beginner',
    speakerImage:
        "https://devfestflorida.org/images/people/dimitar_jovevski.jpg",
    speakerName: "Dimitar Jovevski, Ph.D. and Patrick VanDusen",
    speakerDesc:
        "Dimitar Jovevski, Ph.D. - Founder piksel.mk and Patrick VanDusen - Founder Viewstub",
    track: "startup",
    location: startupRoom
  ),
// 11:55 AM - 12:45 PM
  Session(
    sessionId: 7,
    sessionStartTime: "11:55 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Help Keep the Internet Safe with WebAuthn",
    sessionDesc:
        "Account takeovers continue to be part of major cyber security incidents. Decades of password education haven't helped, and probably made things worse. Email and password lists numbering into the billions have shown up on the dark web. Phishing campaigns have become more targeted and more effective than ever. Sometimes it seems like we're losing the battle.\n\nThere is hope, though! The WebAuthn protocol provides a stronger, easier way for users to authenticate themselves. It uses secure hardware and asymmetric cryptography to provide a strong addition to passwords, or a complete replacement. Best of all, it's easy to implement, and already supported by services you're using today.\n\nCome to this talk to learn how WebAuthn works, how you can use it to protect your accounts, and how to add support to your software. WebAuthn is a powerful tool to help keep the Internet safe, but it's up to us to use it.",
    contentLevel: 'Intermediate',
    speakerImage: "https://devfestflorida.org/images/people/jen_tong.jpg",
    speakerName: "Jen Tong",
    speakerDesc: "Security Advocate, Google",
    track: "web",
    location: webRoom
  ),
  Session(
    sessionId: 8,
    sessionStartTime: "11:55 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Build Cross Platform Apps with Flutter",
    sessionDesc:
        "Flutter built apps compared alongside their Android/iOS counterparts are nearly identical and the difference is becoming imperceptible with every release. What does this mean for the future of client development when technology is democratized in such a way where you can write once and truly run everywhere, any client, on any platform? We’ll take a deep dive into Flutter, how it achieves an almost identical look and feel to its’ Android/iOS counterparts and whats on the roadmap for Flutter (Web & IoT).",
    contentLevel: 'Beginner',
    speakerImage: "https://devfestflorida.org/images/people/faisal_abid.jpg",
    speakerName: "Faisal Abid",
    speakerDesc: "Co-Founder, dydx.dev",
    track: "mobile",
    location: mobileRoom
  ),
  Session(
    sessionId: 9,
    sessionStartTime: "11:55 AM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Streann: The Batman & Robin startup strategy",
    sessionDesc:
        "Streann: The Batman & Robin startup strategy.\n\nGio Punzo and Antonio Calderón - Co-Founders Streann Media",
    contentLevel: 'Beginner',
    speakerImage: "https://devfestflorida.org/images/people/gio_punzo.jpg",
    speakerName: "Gio Punzo and Antonio Calderón",
    speakerDesc: "Gio Punzo and Antonio Calderón - Co-Founders Streann Media",
    track: "startup",
    location: startupRoom
  ),
  // 12:45 PM - 01:15 PM
  Session(
    sessionId: 10,
    sessionStartTime: "12:45 PM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Break for Lunch",
    sessionDesc: activity,
    contentLevel: contentLevel,
    speakerImage:
        "https://icon-library.net//images/lunch-icon-png/lunch-icon-png-11.jpg",
    speakerName: "Lunch",
    speakerDesc: "Lunch provided by DevFest Florida",
    track: "other",
    location: webRoom
  ),
  // 01:20 PM - 02:10 PM
  Session(
    sessionId: 11,
    sessionStartTime: "1:20 PM",
    sessionTotalTime: "20 Mins",
    sessionTitle: "Clean TypeScript & Testing",
    sessionDesc:
        "Utilize TypeScript to make a more testable, maintainable and readable code base.",
    contentLevel: 'Intermediate',
    speakerImage: "https://devfestflorida.org/images/people/dylan_israel.jpg",
    speakerName: "Dylan C. Israel",
    speakerDesc: "Senior Software Engineer, PricewaterhouseCoopers",
    track: "web",
    location: webRoom
  ),
  Session(
    sessionId: 12,
    sessionStartTime: "1:20 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "ML Kit: On-device machine learning for mobile developers",
    sessionDesc:
        "Machine Learning is everywhere it seems, and its usefulness is growing daily. In this session you'll get a deep dive into Machine Learning, and a tour of the options available to you to add on-device machine learning to your mobile app. Whether you want ready-to-use APIs for common use cases like detecting faces or labeling images or you have experience developing your own custom models, ML Kit can help. We’ll cover the basics of implementing machine learning into your app, so you can build a more powerful user experience.",
    contentLevel: 'Intermediate',
    speakerImage: "https://devfestflorida.org/images/people/erik_haddad.jpg",
    speakerName: "Erik Haddad",
    speakerDesc: "UX Engineer, Google",
    track: "mobile",
    location: mobileRoom
  ),
  Session(
    sessionId: 13,
    sessionStartTime: "1:20 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "You don’t deserve senior devs",
    sessionDesc:
        "Orlando has a major hurdle to overcome on its way to becoming a tech hub. We've got a ton of great Junior developers, and a ton of job openings for Senior Developers. We've all come across this mismatch of availability and opportunity either as applicants ourselves, or as our teams look to fill gaps and scale. So where does this mismatch come from? Orlando has a startup mentality, focused on bringing products to customers as fast as possible and with as little as possible. This means companies are trying to deliver more with less, looking for top talent that can deliver on tight deadlines. We also don't have major tech companies you might find in Silicon Valley in our area with the resources and scale to take junior developers and spend the time and money training them into more accomplished developers.\n\nHowever, all is not lost. It's possible to leverage Orlando's large pool of Junior talent without sacrificing the bottom line. This talk is about how startups and companies can employ some junior talent and also the benefits that juniors bring to a company: better retention, communication, more maintainable codebases, etc. I'd also like to explain how junior developers provide huge benefits for an established team, and how they can provide opportunities for senior team members to improve their mentorship and leadership skills. I've spoken about this topic as a guest on the gun.io podcast: https://www.gun.io/frontier/2019/episode-99",
    contentLevel: 'Beginner',
    speakerImage: "https://devfestflorida.org/images/people/lee_warrick.jpg",
    speakerName: "Lee Warrick,",
    speakerDesc: "Front-end developer, Realtruck.com",
    track: "startup",
    location: startupRoom
  ),
  // 02:15 PM - 03:05 PM
  Session(
    sessionId: 14,
    sessionStartTime: "2:15 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Creating real time applications with Angular and Firebase",
    sessionDesc:
        "In this talk you'll learn how you can Firebase to add a backend to your Angular application very quickly. We can store and synchronize data in real time, authenticate users, develop additional functionalities with cloud functions, host and deploy and much more!\n\nCome see why Angular and Firebase is a combination that is on Fire!",
    contentLevel: 'Intermediate',
    speakerImage: "https://devfestflorida.org/images/people/loiane_groner.jpg",
    speakerName: "Loiane Groner",
    speakerDesc: "Business Analyst and Senior Developer, Citibank",
    track: "web",
    location: webRoom
  ),
  Session(
    sessionId: 15,
    sessionStartTime: "2:15 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Machine Learning for everybody",
    sessionDesc:
        "You've been hearing about Machine Learning for years now, but you don't know where to start, you've tried online courses but still don't know what to do!\n\nIn this presentation, I'll walk you through what it actually means to do Machine Learning, and how you can get started using simple projects that start your journey in Machine Learning.",
    contentLevel: 'Beginner',
    speakerImage: "https://devfestflorida.org/images/people/faisal_abid.jpg",
    speakerName: "Faisal Abid",
    speakerDesc: "Co-Founder, dydx.dev",
    track: "mobile",
    location: mobileRoom
  ),
  Session(
    sessionId: 16,
    sessionStartTime: "2:15 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Pair Programming is a skill worth developing",
    sessionDesc:
        "Pair Programming usually gets a bad rap from people who have only tried it for a few days while onboarding at a new company and then were left alone from then on. Like many things, there are best practices for pair programming, and concrete skills to learn that will improve the quality of your code and time to completion.",
    contentLevel: 'Beginner',
    speakerImage:
        "https://devfestflorida.org/images/people/cassidy_swallow.jpg",
    speakerName: "Cassidy Swallow",
    speakerDesc: "Android Developer, Pluralsight",
    track: "startup",
    location: startupRoom
  ),
  // 03:10 PM - 04:00 PM
  Session(
    sessionId: 17,
    sessionStartTime: "3:10 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Are you prepared for the next type of search?",
    sessionDesc:
        "Voice is quickly becoming the new standard for search and most businesses are not ready for it. Using Actions on Google, developers are able to design, build, and distribute fully-customizable conversational applications.\n\nActions on Google is a developer platform that lets you create software to extend the functionality of the Google Assistant, Google’s virtual personal assistant, across more than 500 million devices, including smart speakers, phones, cars, TVs, headphones, watches, and much more. In this session, you’ll learn the fundamentals needed for building Actions on Google, including Voice UI (VUI) & conversational design, what tools are available, some resources to get you started, and more!",
    contentLevel: 'Beginner',
    speakerImage: "https://devfestflorida.org/images/people/kyle_paul.jpg",
    speakerName: "Kyle Paul",
    speakerDesc: "Software architect, Google",
    track: "web",
    location: webRoom
  ),
  Session(
    sessionId: 18,
    sessionStartTime: "3:10 PM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Cloud IoT - Bringing Machine Learning to the Edge",
    sessionDesc:
        "IoT applications want to take advantage of the intelligent cloud and the intelligent edge. Cloud IoT Edge, Edge TPU and Cloud IoT Core are opening up completely new possibilities with IoT. With powerful data processing and ML capabilities at the edge, devices such as robotic arms, wind turbines and smart cars can now act on the data from their sensors in real time and predict outcomes locally.\n\nIn this session, we will walk  through training a machine learning model with data collected from IoT devices in the cloud, deploying that model to Cloud IoT Edge device and run on the device through the power of the Edge TPU hardware accelerator.",
    contentLevel: 'Beginner',
    speakerImage:
        "https://devfestflorida.org/images/people/sivamuthu_kumar.jpg",
    speakerName: "Sivamuthu Kumar",
    speakerDesc: "Software architect, Computer Enterprises Inc",
    track: "mobile",
    location: mobileRoom
  ),
  Session(
    sessionId: 19,
    sessionStartTime: "3:10 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "How we built our product: Moving from Angular to Flutter",
    sessionDesc:
        "Rody Davis - CrossMedia LLC and João Luiz S. Kestering - Modus Create are also the Co-founders and Software Engineers of Ampstor.\n\nThis talk will explore a real world application built with Angular and moved to a Flutter implementation on iOS/Android/web with one codebase.\n\nWe will also explore how to leverage Amp for creating Amp stories.",
    contentLevel: 'Intermediate',
    speakerImage: "https://devfestflorida.org/images/people/rody_davis.jpg",
    speakerName: "Rody Davis and João Luiz S. Kestering",
    speakerDesc: "Co-founders and Software Engineers, Ampstor",
    track: "startup",
    location: startupRoom
  ),
  // 04:00 PM - 04:20 PM
  Session(
    sessionId: 20,
    sessionStartTime: "4:00 PM",
    sessionTotalTime: "20 Mins",
    sessionTitle: "Snack break 🍪🍹☕️",
    sessionDesc: desc,
    contentLevel: contentLevel,
    speakerImage:
        "https://icon-library.net//images/hot-coffee-icon/hot-coffee-icon-17.jpg",
    speakerName: "Break",
    speakerDesc: "Snack break provided by DevFest Florida",
    track: "other",
    location: webRoom
  ),
  // 04:20 PM - 04:50 PM
  Session(
    sessionId: 21,
    sessionStartTime: "04:20 PM",
    sessionTotalTime: "20 Mins",
    sessionTitle: "Mind-Reading with Adaptive and Intelligent User Interfaces",
    sessionDesc:
        "What if you could predict user behavior with smart UIs?\n\nIn this talk, we will explore how we can make adaptive and intelligent user interfaces that learn from how individual users use your apps, and personalize the interface and features just for them, in real-time. With probability-driven statecharts, decision trees reinforcement learning and more, UIs can be developed in such a way that it automatically adapts to the user's behavior.",
    contentLevel: 'Intermediate',
    speakerImage:
        "https://devfestflorida.org/images/people/david_khourshid.jpg",
    speakerName: "David Khourshid",
    speakerDesc: "Software Engineer, Microsoft",
    track: "web",
    location: webRoom
  ),
  Session(
    sessionId: 22,
    sessionStartTime: "4:20 PM",
    sessionTotalTime: "20 Mins",
    sessionTitle:
        "Securing Sensitive Data with Google Cloud's Data Loss Prevention API",
    sessionDesc:
        "Every organization has sensitive data they must protect: from addresses and credit card numbers to medical patient records and intellectual property, the list goes on. These types of info are typically referred to as personally identifiable information (PII) or protected health information (PHI).\n\nFor businesses with this data, securing the network is just half the fun. What happens if a bad actor is already inside your network and starts poking around the data? You need some way of disguising, or obfuscating, the data in such a way that it’s unidentifiable to unauthorized eyes. In this talk, Zach will present his best practices for securing PII with Google Cloud's Data Loss Prevention API.",
    contentLevel: 'Beginner',
    speakerImage: "https://devfestflorida.org/images/people/zach_sais.jpg",
    speakerName: "Zach Sais",
    speakerDesc: "Customer Engineer, Google",
    track: "mobile",
    location: mobileRoom
  ),
  Session(
    sessionId: 23,
    sessionStartTime: "4:20 PM",
    sessionTotalTime: "20 Mins",
    sessionTitle: "Leading Lady: Leading A Team with Happiness",
    sessionDesc:
        "Leading a team of developers is, most assuredly, not a cake walk. But how do we make every moment as sweet as possible? How can you as a leader on your team, whether on the team or as management create an environment that is fruitful for yourself, your direct manager, and your team?\n\nThis interactive talk will include audience bug fixes (via CodePen), anecdotes, tips, and overall -- happiness.",
    contentLevel: 'Intermediate',
    speakerImage: "https://devfestflorida.org/images/people/jenell_pizarro.jpg",
    speakerName: "Jenell Pizarro",
    speakerDesc: "UX Developer, Capco",
    track: "startup",
    location: startupRoom
  ),
// 04:55 PM - 05:25 PM
  Session(
    sessionId: 24,
    sessionStartTime: "4:55 PM",
    sessionTotalTime: "20 Mins",
    sessionTitle:
        "Demistytifying PWAs: How to Create Native-like Apps with JavaScript",
    sessionDesc:
        "Stop me if you have heard this one before, We need a website, an iOS, and an android app! But, we don't have that many developers. It's tough knowing three languages and ecosystems just to get your app in front of all your users. What if there was a better way?\n\nProgressive Web Apps could be the solution to your app woes. PWAs are cross-platform, searchable, opt-in apps that can provide native-like experiences using web technology (JS, React, Vue, etc). This talk is going to not only explain what a PWA is, but when you should make one and how to do so easily with your existing skills!",
    contentLevel: 'Intermediate',
    speakerImage: "https://devfestflorida.org/images/people/lee_warrick.jpg",
    speakerName: "Lee Warrick,",
    speakerDesc: "Front-end developer, Realtruck.com",
    track: "web",
    location: webRoom
  ),
  Session(
    sessionId: 25,
    sessionStartTime: "4:55 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Getting Started with ARCore",
    sessionDesc:
        "What's new with Google ARCore: In the future, imagine using an AR app to plan and layout furniture in a space. Imagine how biology students might use an AR app to explore 3D cell structures or processes. What would it be like to make the real world a level for your next game?\n\nAll of these scenarios become possible with Google ARCore. In this talk, we'll walk through the process of building an ARCore app using Unity, C#, and the AR Core SDK. We'll also explore ways web developers can build AR apps.",
    contentLevel: 'Beginner',
    speakerImage:
        "https://devfestflorida.org/images/people/michael_rosario.jpg",
    speakerName: "Michael Rosario",
    speakerDesc: "Senior software engineer, Design Interactive",
    track: "mobile",
    location: mobileRoom
  ),
  Session(
    sessionId: 26,
    sessionStartTime: "4:55 PM",
    sessionTotalTime: "40 Mins",
    sessionTitle: "Presentation TBD",
    sessionDesc: desc,
    contentLevel: 'Beginner',
    speakerImage: personImage,
    speakerName: "TBD",
    speakerDesc: desc,
    track: "startup",
    location: startupRoom
  ),
  // 05:30 PM - 08:00 PM
  Session(
    sessionId: 27,
    sessionStartTime: "5:30 PM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Closing Remarks 🙏",
    sessionDesc: activity,
    contentLevel: contentLevel,
    speakerImage: peopleImage,
    speakerName: "Thank you from DevFest Florida!",
    speakerDesc: "Closing Remarks at the Community Room",
    track: "other",
    location: communityRoom
  ),
  Session(
    sessionId: 28,
    sessionStartTime: "6:00 PM",
    sessionTotalTime: "120 Mins",
    sessionTitle: "After Party: Happily Ever After - Arcade Edition\n🎉🕹️🍹",
    sessionDesc:
        "After Party:\nThe after party will immediately follow the conference",
    contentLevel: contentLevel,
    speakerImage:
        "https://icon-library.net//images/disco-icon/disco-icon-18.jpg",
    speakerName: "Let's have some magical fun!",
    speakerDesc: "After Party",
    track: "other",
    location: webRoom
  ),
];
