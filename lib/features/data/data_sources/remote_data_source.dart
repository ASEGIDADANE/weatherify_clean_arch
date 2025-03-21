import 'dart:convert';

import 'package:weather_app_by_tdd/core/constant/constants.dart';
import 'package:weather_app_by_tdd/core/error/exception.dart';
import 'package:weather_app_by_tdd/features/data/models/weather_model.dart';
import 'package:http/http.dart' as http;

abstract class WeatherRemoteDataSource {
  
  Future<WeatherModel> getCurrentWeather(String cityName);
}


class WeatherRemoteDataSourceImpl extends WeatherRemoteDataSource {
  final http.Client client;
  WeatherRemoteDataSourceImpl({required this.client});

  @override
  Future < WeatherModel > getCurrentWeather(String cityName) async {
    final response =
      await client.get(Uri.parse(Urls.currentWeatherByName(cityName)));

     if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
      

    }
  }
}