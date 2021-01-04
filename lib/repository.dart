import 'package:blocnetwork/WeatherResponse.dart';
import 'api_provider.dart';

class Repository {
  ApiProvider appApiProvider = ApiProvider();

  Future<WeatherResponse> fetchLondonWeather() =>
      appApiProvider.fetchLondonWeather();
}
