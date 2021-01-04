import 'package:blocnetwork/WeatherResponse.dart';
import 'package:blocnetwork/repository.dart';
import 'package:rxdart/rxdart.dart';

class WeatherBloc {
  Repository _repository = Repository();

  final _weatherFetcher = PublishSubject<WeatherResponse>();

  Observable<WeatherResponse> get weather => _weatherFetcher.stream;

  fetchLondonWeather() async {
    WeatherResponse weatherResponse = await _repository.fetchLondonWeather();
    _weatherFetcher.sink.add(weatherResponse);
  }

  dispose() {
    _weatherFetcher.close();
  }
}

final weatherBloc = WeatherBloc();
