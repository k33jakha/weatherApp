import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'views/help_screen.dart';
import 'views/home_screen.dart';
import 'themes/app_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Weather App',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: '/help',
      getPages: [
        GetPage(name: '/help', page: () => HelpScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
      ],
    );
  }
}
