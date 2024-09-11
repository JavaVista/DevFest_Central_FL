import 'session.dart';

class Group {
  String? groupId;
  String groupName;
  List<Session> sessions;
  bool isDefault;

  Group({
    this.groupId,
    required this.groupName,
    required this.sessions,
    required this.isDefault,
  });

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      groupId: json['groupId'],
      groupName: json['groupName'] ?? '',
      sessions: (json['sessions'] as List)
          .map((session) => Session.fromJson(session))
          .toList(),
      isDefault: json['isDefault'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'groupId': groupId,
      'groupName': groupName,
      'sessions': sessions.map((session) => session.toJson()).toList(),
      'isDefault': isDefault,
    };
  }
}
