import 'package:flutter/material.dart';

void main() {
  runApp(const CosmicApp());
}

class CosmicApp extends StatelessWidget {
  const CosmicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CosmicSplashScreen(),
    );
  }
}

class CosmicSplashScreen extends StatelessWidget {
  const CosmicSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 99,
      height: MediaQuery.of(context).size.height * 99,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/image 10.jpg')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/Ellipse 27.png'),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/Ellipse 29.png'),
            ),
            Align(
             alignment: Alignment.center,
              child: Image.asset('assets/images/shad.png'),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/logo.png'),

            ), Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/flutter_logo (1).png'),
            ),

          ],

        ),

      ),
    );
  }
}
