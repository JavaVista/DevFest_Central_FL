
import 'package:devfestfl/constants.dart';
import 'package:devfestfl/home/session.dart';
import 'package:devfestfl/interfaces/i_client.dart';

abstract class IHomeProvider {
  Future<SessionsData> getSessions();
}

class HomeProvider implements IHomeProvider {
  late IClient _client;

   @override
  Future<SessionsData> getSessions() async {
    var result = await _client.getAsync(kConstGetSessionsUrl);
    if (result.networkServiceResponse.success) {
      SessionsData res = SessionsData.fromJson(result.mappedResult);
      return res;
    }

    throw Exception(result.networkServiceResponse.message);
  }

}


