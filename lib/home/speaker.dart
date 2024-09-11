class Speaker {
  String id;
  String firstName;
  String lastName;
  String fullName;
  String bio;
  String tagLine;
  String profilePicture;
  List<SessionOfSpeaker> sessions;
  List<Link> links;

  Speaker({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.bio,
    required this.tagLine,
    required this.profilePicture,
    required this.sessions,
    required this.links,
  });

  factory Speaker.fromJson(Map<String, dynamic> json) {
    return Speaker(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      fullName: json['fullName'],
      bio: json['bio'],
      tagLine: json['tagLine'],
      profilePicture: json['profilePicture'],
      sessions: (json['sessions'] as List)
          .map((session) => SessionOfSpeaker.fromJson(session))
          .toList(),
      links:
          (json['links'] as List).map((link) => Link.fromJson(link)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'fullName': fullName,
      'bio': bio,
      'tagLine': tagLine,
      'profilePicture': profilePicture,
      'sessions': sessions.map((session) => session.toJson()).toList(),
      'links': links.map((link) => link.toJson()).toList(),
    };
  }
}

class SessionOfSpeaker {
  int id;
  String name;

  SessionOfSpeaker({required this.id, required this.name});

  factory SessionOfSpeaker.fromJson(Map<String, dynamic> json) {
    return SessionOfSpeaker(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

class Link {
  String title;
  String url;
  String linkType;

  Link({required this.title, required this.url, required this.linkType});

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      title: json['title'],
      url: json['url'],
      linkType: json['linkType'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'url': url,
      'linkType': linkType,
    };
  }
}
