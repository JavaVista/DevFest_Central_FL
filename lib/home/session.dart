class SessionsData {
  List<Session> sessions;

  SessionsData({required this.sessions});

  SessionsData.fromJson(Map<String, dynamic> json) : sessions = [] {
    if (json['sessions'] != null) {
      json['sessions'].forEach((v) {
        sessions.add(Session.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sessions'] = sessions.map((v) => v.toJson()).toList();
    return data;
  }
}

class Session {
  String id;
  String title;
  String? description;
  String startsAt;
  String endsAt;
  bool isServiceSession;
  bool isPlenumSession;
  List<SpeakerAtSession> speakers;
  String room;
  String? recordingUrl;

  Session({
    required this.id,
    required this.title,
    this.description,
    required this.startsAt,
    required this.endsAt,
    required this.isServiceSession,
    required this.isPlenumSession,
    required this.speakers,
    required this.room,
    this.recordingUrl,
  });

  Session.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? '',
        title = json['title'] ?? '',
        description = json['description'],
        startsAt = json['startsAt'] ?? '',
        endsAt = json['endsAt'] ?? '',
        isServiceSession = json['isServiceSession'] ?? false,
        isPlenumSession = json['isPlenumSession'] ?? false,
        speakers = (json['speakers'] as List)
            .map((speaker) => SpeakerAtSession.fromJson(speaker))
            .toList(),
        room = json['room'] ?? '',
        recordingUrl = json['recordingUrl'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['startsAt'] = startsAt;
    data['endsAt'] = endsAt;
    data['isServiceSession'] = isServiceSession;
    data['isPlenumSession'] = isPlenumSession;
    data['speakers'] = speakers.map((speaker) => speaker.toJson()).toList();
    data['room'] = room;
    data['recordingUrl'] = recordingUrl;
    return data;
  }
}

class SpeakerAtSession {
  String id;
  String name;

  SpeakerAtSession({required this.id, required this.name});

  factory SpeakerAtSession.fromJson(Map<String, dynamic> json) {
    return SpeakerAtSession(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

//*  Sessions hardcoded data
const desc = "Presentation TBD";
const activity = "Community Room - Get your badge, coffee and meet new friends";
const peopleImage =
    "https://icon-library.net//images/users-icon-png/users-icon-png-8.jpg";
const personImage =
    "https://icon-library.net//images/user-icon-png-transparent/user-icon-png-transparent-27.jpg";
const contentLevel = "All Skills";
const communityRoom = "Community Room";
const webRoom = "Mythical Web 🕸";
const mobileRoom = "Sorcerer Mobile 📱";
const startupRoom = "Enchanted Startup 🔥";

//* Tracks can be web, mobile and startups (Make it web if the track type is not clear.)
List<Session> sessions = [
  Session(
    id: '1',
    title: "Registration & Morning Coffee 📝📛☕",
    description:
        "Community Room:\nGet your badge, coffee and meet new friends.",
    startsAt: "2023-10-01T09:00:00",
    endsAt: "2023-10-01T09:30:00",
    isServiceSession: true,
    isPlenumSession: false,
    speakers: [],
    room: communityRoom,
  ),
  Session(
    id: '2',
    title: "Welcome Remarks 👋",
    description: "The Devfest Florida's organizing team opening remarks.",
    startsAt: "2023-10-01T09:30:00",
    endsAt: "2023-10-01T10:00:00",
    isServiceSession: false,
    isPlenumSession: true,
    speakers: [
      SpeakerAtSession(id: '1', name: "DevFest Florida's organizing team"),
    ],
    room: webRoom,
  ),
  Session(
    id: '3',
    title: "Keynote - How companies internally innovate?",
    description:
        "Vanessa Zabala is the Director of Impact Development for the Orlando Economic Partnership, leading the organization's internal intrapreneurship initiatives and deploying innovation capacity programs to external stakeholders.\n\nCurrently, she is an adjunct professor at Rollins College teaching intrapreneurship. As an active member in the community, she is on the board of Rebuild Globally, West Lakes Partnership, and the Chair of conferences for the Organization of Women in International Trade.",
    startsAt: "2023-10-01T10:00:00",
    endsAt: "2023-10-01T10:40:00",
    isServiceSession: false,
    isPlenumSession: true,
    speakers: [
      SpeakerAtSession(id: '2', name: "Vanessa Zabala"),
    ],
    room: webRoom,
  ),
];
