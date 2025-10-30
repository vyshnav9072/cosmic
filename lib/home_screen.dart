import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 99,
      height: MediaQuery.of(context).size.height * 99,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/image 10.jpg'),
          fit: BoxFit.fill,
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  left: BorderSide(color: Color.fromRGBO(9, 21, 34, 1)),
                  right: BorderSide(color: Color.fromRGBO(9, 21, 34, 1)),
                  bottom: BorderSide(color: Color.fromRGBO(9, 21, 34, 1),)
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
