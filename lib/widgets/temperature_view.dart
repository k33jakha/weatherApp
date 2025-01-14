import 'package:flutter/material.dart';
import 'package:weather_apps_chatgpt/model/weather_model.dart';

//import '../models/weather_model.dart';

// class TemperatureView extends StatelessWidget {

//   final WeatherModel weather;

//   const TemperatureView(this.weather);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Text(
//           '${weather.tempC}°C',
//           style: Theme.of(context).textTheme.headline2,
//         ),
//         Text(
//           weather.text,
//           style: Theme.of(context).textTheme.headline6,
//         ),
//         Image.network('https:${weather.icon}'),
//       ],
//     );
//   }
// }

class TemperatureView extends StatelessWidget {
  final WeatherModel weather;

  const TemperatureView(this.weather);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '${weather.tempC}°C',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          weather.text,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Image.network('https:${weather.icon}'),
      ],
    );
  }
}
