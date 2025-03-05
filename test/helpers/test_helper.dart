

import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:weather_app_by_tdd/features/data/data_sources/remote_data_source.dart';
import 'package:weather_app_by_tdd/features/domain/repositories/weather_repository.dart';
import 'package:weather_app_by_tdd/features/domain/usecases/get_current_weather.dart'; 
@GenerateMocks(
  [
    WeatherRepository,
    WeatherRemoteDataSource,
    GetCurrentWeatherUseCase
  ],
  
    customMocks:[
      MockSpec<http.Client>(as: #MockHttpClient)
    ]



)
void main(){}