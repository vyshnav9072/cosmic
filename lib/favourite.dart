import 'package:cosmic_ios/planet_wise_details.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}


class _FavouriteScreenState extends State<FavouriteScreen> {
  int _selectedIndex=0;
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
            Container(
              width: MediaQuery.of(context).size.width * 0.99,
              height: MediaQuery.of(context).size.height * 0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border(
                  left: BorderSide(color: Colors.black, width: 2),
                  right: BorderSide(color: Colors.black, width: 2),
                  bottom: BorderSide(color: Colors.black, width: 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border(
                        left: BorderSide(color: Colors.black, width: 2),
                        right: BorderSide(color: Colors.black, width: 2),
                        bottom: BorderSide(color: Colors.black, width: 2),
                        top: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    child: Icon(
                      Icons.format_list_bulleted_outlined,
                      color: Colors.white,
                    ),
                  ),
                  // SizedBox(width: 150),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Favourites",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(width: 80),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            SizedBox(
              width: 300,
              height: 550,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.84,
                    height: MediaQuery.of(context).size.height * 0.18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(

                        children: [
                          Align(alignment:Alignment.topLeft,
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                "assets/images/Ellipse 39.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(left: 70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${planetWiseDetails['planetName'][index]}",
                                  style: TextStyle(color: Colors.white),
                                ),
                            SizedBox(
                              width: 200 ,
                              child: Text(                           "${planetWiseDetails['planetDiscription'][index]}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),

                              ],
                            ),
                          ),
                          SizedBox(width: 40,),
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.favorite, color: Colors.white),
                          ),
                          Positioned(
                            left: 200,bottom: 0,
                            child: Row(
                              children: [
                                Text(
                                  "Detils",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(Icons.arrow_right_alt),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 20),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'favourite'),
              BottomNavigationBarItem(icon: Icon(Icons.more),label: 'More'),

            ],
            currentIndex: _selectedIndex,
            unselectedItemColor:Colors.blue,
            selectedItemColor: Colors.white,
            onTap: (value) {
              setState(() {
                _selectedIndex=value;
              });
            }
        ),
      ),
    );
  }
}
