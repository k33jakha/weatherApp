import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import '../models/weather_model.dart';
import 'package:weather_apps_chatgpt/model/weather_model.dart';
import '../services/weather_api_service.dart';

class WeatherController extends GetxController {
  var weather = Rxn<WeatherModel>();
  var error = RxnString();
  var isDarkMode = false.obs;
  final locationController = TextEditingController();

  void fetchWeather() async {
    final location = locationController.text;
    if (location.isEmpty) {
      error.value = 'Location cannot be empty.';
      weather.value = null;
      return;
    }

    try {
      weather.value = await WeatherApiService.fetchWeather(location);
      error.value = null;
    } catch (e) {
      error.value = e.toString();
      weather.value = null;
    }
  }

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }
}
