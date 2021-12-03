import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vlossom/main.dart';
import 'package:vlossom/Widgets/playing.dart';

import 'homepage.dart';

void main() => runApp(Sign_());

class Sign_ extends StatelessWidget {
  const Sign_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff070919), Color(0xff191b29)])),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.network(
          "https://res.cloudinary.com/dytnlsq2h/image/upload/v1637920846/PicsArt_11-25-12.05.40.png",
          fit: BoxFit.cover,
        ),
      ),
      Column(children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            SizedBox(
              height: 450,
            ),
            Container(
              // alignment: Alignment.bottomCenter,
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
              child: Text(
                "Enjoy the best \nmusic with us!",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'roboto',
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Container(
                  // alignment: Alignment.bottomCenter,
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(),
                  child: Container(
                    // height: 60,
                    // width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              // Color(0xfffcf5c4),
                              Color(0xff4760e5),
                              Color(0xffdc5088),
                              Color(0xffd46451),
                            ])),
                    alignment: Alignment.center,
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontFamily: 'roboto'),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // alignment: Alignment.bottomCenter,
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
              child: Text(
                "create an account",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'roboto',
                  fontSize: 14,
                ),
              ),
            ),
          ]),
        )
      ]),
    ]));
  }
}
