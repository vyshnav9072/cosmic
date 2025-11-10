import 'dart:ui';

import 'package:cosmic_ios/contianar%20.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inner extends StatefulWidget {
  const Inner({super.key});

  @override
  State<Inner> createState() => _InnerState();
}

class _InnerState extends State<Inner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.99,
      height: MediaQuery.of(context).size.height * 0.99,

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/image 10.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              top: 30,
              left: 10,
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
            Positioned(
              top: 30,
              right: 10,
              child: Icon(Icons.favorite_border, color: Colors.white),
            ),
            Align(
              alignment: Alignment.bottomCenter,

              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width * 0.99,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33),
                    ),
                    color: Colors.black.withOpacity(0.7),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 125),
                      Text(
                        "Erarth",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 38,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              buildColumnWidget(
                                "assets/images/icon_xl.png",
                                " Mass\n(1024kg)",
                                5.97,
                              ),
                              buildColumnWidget(
                                "assets/images/icon_xl (1).png",
                                " Mass\n(1024kg)",
                                5.97,
                              ),
                              buildColumnWidget(
                                "assets/images/icon.png",
                                " Mass\n(1024kg)",
                                5.97,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              buildColumnWidget(
                                "assets/images/icon_xl (2).png",
                                " Mass\n(1024kg)",
                                5.97,
                              ),
                              buildColumnWidget(
                                "assets/images/icon_xl (4).png",
                                " Mass\n(1024kg)",
                                5.97,
                              ),
                              buildColumnWidget(
                                "assets/images/icon_xl (3).png",
                                " Mass\n(1024kg)",
                                5.97,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.50,
                child: ElevatedButton(
                  child: Text(
                    'visit',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage("assets/images/planet.png"),
                fit: BoxFit.contain,
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
