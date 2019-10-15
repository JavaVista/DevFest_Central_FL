
/* import 'package:devfestcenfl/home/session.dart';
import 'package:devfestcenfl/utils/devfest.dart';

abstract class IHomeProvider {
  Future<SessionsData> getSessions();
}

class HomeProvider implements IHomeProvider {
  IClient _client;


   @override
  Future<SessionsData> getSessions() async {
    var result = await _client.getAsync(kConstGetSessionsUrl);
    if (result.networkServiceResponse.success) {
      SessionsData res = SessionsData.fromJson(result.mappedResult);
      return res;
    }

    throw Exception(result.networkServiceResponse.message);
  }

} */


