import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthcare/views/Resigtration/Login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => Signin());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
              Color.fromRGBO(131, 226, 255, 1),
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 240, 229, 229),
            ])),
        child: Center(
          child: Container(
            height: 321,
            width: 322,
            child: Image.asset("assets/images/Logo.png"),
          ),
        ),
      ),
    );
  }
}
