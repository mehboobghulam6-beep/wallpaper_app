import 'package:flutter/material.dart';
import 'package:wallpaper_app/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wallpaper App",
      home: Splashscreen(),
    );
  }
}
