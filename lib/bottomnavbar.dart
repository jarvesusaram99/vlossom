import 'package:flutter/material.dart';
import 'package:vlossom/Pages/explore.dart';
import 'package:vlossom/Pages/homepage.dart';
import 'package:vlossom/Pages/search.dart';

class BottomNav extends StatefulWidget {
  late var index;
  BottomNav({@required this.index});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter, end: Alignment.bottomCenter,
                // stops: [0.0, 0.8],
                // tileMode: TileMode.clamp,
                colors: [Color(0xff070919), Color(0xff191b29)])),
        child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            // elevation: 0,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            unselectedItemColor: Colors.white,
            currentIndex: widget.index,
            selectedItemColor: Colors.blue,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Find',
              ),
            ],
            // initialActiveIndex: 3,
            onTap: (int i) {
              setState(() {
                if (i == 0) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (Route<dynamic> route) => false,
                  );
                } else if (i == 1) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ExplorePage()),
                    (Route<dynamic> route) => false,
                  );
                } else if (i == 2) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                    (Route<dynamic> route) => false,
                  );
                }
              });
            }));
  }
}
