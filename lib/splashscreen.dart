import 'package:flutter/material.dart';
import 'package:starluxury/Auth/screen/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () =>
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LogInScreen()),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset('assets/images/Splash-Star-Luxury-Cars.gif', fit: BoxFit.cover,),
      ),
    );
  }
}
