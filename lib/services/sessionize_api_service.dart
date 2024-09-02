import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SessionizeApiService {
  static const String _baseUrl = 'https://sessionize.com/api/v2/1xy9p1oq/view/';
  static const String _allDataEndpoint = 'All';
  static const String _speakersEndpoint = 'Speakers';

  Future<Map<String, dynamic>> fetchAllData() async {
    final response = await http.get(Uri.parse('$_baseUrl$_allDataEndpoint'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      await _cacheData(_allDataEndpoint, data);
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<dynamic>> fetchSpeakers() async {
    final response = await http.get(Uri.parse('$_baseUrl$_speakersEndpoint'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      await _cacheData(_speakersEndpoint, data);
      return data;
    } else {
      throw Exception('Failed to load speakers');
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

  Future<Map<String, dynamic>> getAllData() async {
    final cachedData = await _getCachedData(_allDataEndpoint);
    if (cachedData != null) {
      return cachedData;
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
}
