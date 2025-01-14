import 'dart:convert';
import 'package:http/http.dart' as http;
//import '../models/weather_model.dart';
import 'package:weather_apps_chatgpt/model/weather_model.dart';

class WeatherApiService {
  static const String apiKey = 'f3e4d21aec2c493496752009251401';
  static const String baseUrl = 'https://api.weatherapi.com/v1/current.json';

  static Future<WeatherModel> fetchWeather(String location) async {
    final response =
        await http.get(Uri.parse('$baseUrl?key=$apiKey&q=$location'));

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather data.');
    }
  }
}
