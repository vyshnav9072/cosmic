import 'package:flutter/material.dart';

import 'bottom_logo_display_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        body: Column(
          children: [
            SizedBox(height: 25),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/Vector (1).png'),
            ),
            SizedBox(height: 300),
            Container(
              width: MediaQuery.of(context).size.width * 97,
              height: MediaQuery.of(context).size.height * 0.56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                border: Border(top: BorderSide(color: Colors.grey, width: 1.0)),

                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.3),
                    Color.fromRGBO(0, 0, 0, 0),
                    Color.fromRGBO(255, 255, 255, 0.2),
                  ],
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,

                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: 'NeilArm30@gmail.com',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: '',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: '',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color.fromRGBO(17, 220, 232, 1),
                        fontSize: 16,

                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.99,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(0, 229, 299, 1),
                            Color.fromRGBO(114, 165, 242, 1),
                            Color.fromRGBO(233, 97, 255, 1),
                          ],
                        ),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            height: 10,
                            color: Colors.grey,
                            thickness: 1,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                        Text(
                          "or sign in using",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            height: 10,
                            color: Colors.grey,
                            thickness: 1,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        bottomLogoDisplayContainer("assets/images/Vector (2).png"),
                        bottomLogoDisplayContainer("assets/images/Subtract.png"),
                        bottomLogoDisplayContainer("assets/images/Vector (3).png"),
                      ],

                    ),
                    SizedBox(height: 1,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(

                          "Don’t have an account? ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
