import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/weather_controller.dart';
import '../widgets/temperature_view.dart';

// class HomeScreen extends StatelessWidget {
//   final WeatherController weatherController = Get.put(WeatherController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Weather App'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.help_outline),
//             onPressed: () => Get.toNamed('/help'),
//           ),
//           IconButton(
//             icon: Icon(Icons.brightness_6),
//             onPressed: () => weatherController.toggleTheme(),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: weatherController.locationController,
//               decoration: InputDecoration(
//                 labelText: 'Enter location',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: weatherController.fetchWeather,
//               child: Text('Search'),
//             ),
//             SizedBox(height: 20),
//             Obx(() {
//               if (weatherController.weather == null) {
//                 return Text('Enter a location to get weather details.');
//               } else if (weatherController.error != null) {
//                 return Text('Error: ${weatherController.error}');
//               }
//               return TemperatureView(weatherController.weather!);
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  final WeatherController weatherController = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () => Get.toNamed('/help'),
          ),
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () => weatherController.toggleTheme(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: weatherController.locationController,
              decoration: InputDecoration(
                labelText: 'Enter location',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: weatherController.fetchWeather,
              child: Text('Search'),
            ),
            SizedBox(height: 20),
            Obx(() {
              if (weatherController.weather.value == null) {
                return Text('Enter a location to get weather details.');
              } else if (weatherController.error.value != null) {
                return Text('Error: ${weatherController.error.value}');
              }
              return TemperatureView(weatherController.weather.value!);
            }),
          ],
        ),
      ),
    );
  }
}
