import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:devfestfl/home/group.dart';

class SessionizeApiService {
  static const String _baseUrl = 'https://sessionize.com/api/v2/1xy9p1oq/view/';
  static const String _allDataEndpoint = 'All';
  static const String _speakersEndpoint = 'Speakers';
  static const String _sessionsEndpoint = 'Sessions';

  final Logger _logger = Logger('SessionizeApiService');

  Future<List<dynamic>> fetchAllData() async {
    final response = await http.get(Uri.parse('$_baseUrl$_allDataEndpoint'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;
      final groups = data.map((json) => Group.fromJson(json)).toList();
      await _cacheData(_allDataEndpoint, data);
      return groups;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<dynamic>> fetchSpeakers() async {
    final response = await http.get(Uri.parse('$_baseUrl$_speakersEndpoint'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      _logger.info('Fetched speakers: $data');
      await _cacheData(_speakersEndpoint, data);
      return data;
    } else {
      _logger.severe('Failed to load speakers: ${response.statusCode} ${response.body}');
      throw Exception('Failed to load speakers');
    }
  }

  Future<List<Group>> fetchSessions() async {
    final response = await http.get(Uri.parse('$_baseUrl$_sessionsEndpoint'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;
      return data.map((json) => Group.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load sessions');
    }
  }

  Future<void> _cacheData(String key, dynamic data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(data));
  }

  Future<dynamic> _getCachedData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final cachedData = prefs.getString(key);
    if (cachedData != null) {
      return json.decode(cachedData);
    }
    return null;
  }

  Future<List<dynamic>> getAllData() async {
    final cachedData = await _getCachedData(_allDataEndpoint);
    if (cachedData != null) {
      return (cachedData as List).map((json) => Group.fromJson(json)).toList();
    }
    return await fetchAllData();
  }

  Future<List<dynamic>> getSpeakers() async {
    final cachedData = await _getCachedData(_speakersEndpoint);
    if (cachedData != null) {
      return cachedData;
    }
    return await fetchSpeakers();
  }

  Future<List<Group>> getSessions() async {
    final cachedData = await _getCachedData(_sessionsEndpoint);
    if (cachedData != null) {
      return (cachedData as List).map((json) => Group.fromJson(json)).toList();
    }
    return await fetchSessions();
  }
}