class WeatherModel {
  final double tempC;
  final String text;
  final String icon;

  WeatherModel({required this.tempC, required this.text, required this.icon});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      tempC: json['current']['temp_c'],
      text: json['current']['condition']['text'],
      icon: json['current']['condition']['icon'],
    );
  }
}
