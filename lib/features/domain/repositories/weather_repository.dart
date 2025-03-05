import 'package:dartz/dartz.dart';
import 'package:weather_app_by_tdd/core/error/failure.dart';
import 'package:weather_app_by_tdd/features/domain/entities/weather.dart';

abstract class WeatherRepository {
  
  Future<Either<Failure,WeatherEntity>> getCurrentWeather(String cityName);
}