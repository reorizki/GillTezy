import 'package:flutter/material.dart';
import 'package:social_media_flutter/login/login_view.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const LoginView(),
          ),
          (route) => false);
    });
    return Scaffold(
      backgroundColor: const Color(0x00171a21),
      body: Center(
        child: Image.asset(
          "assets/icon/splashscreen.png",
          width: 120.0,
          height: 120.0,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
