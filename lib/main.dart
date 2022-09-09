import 'package:flutter/material.dart';
import 'package:starluxury/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Montserrat',
        textTheme:  const TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white,fontFamily: 'Montserrat-ExtraBold'),
          displayMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red,fontFamily: 'Montserrat-SemiBold'),
          bodyMedium: TextStyle(fontSize: 15, fontFamily: "Montserrat-regular",color: Colors.red),
          bodySmall: TextStyle(fontSize: 14.0, fontFamily: "Montserrat-regular",color: Colors.white),
          bodyLarge: TextStyle(fontSize: 18.0, fontFamily: "Montserrat-regular",color: Colors.white),
          labelMedium: TextStyle(fontSize: 18, fontFamily: "Montserrat-SemiBold",color: Colors.white30),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

