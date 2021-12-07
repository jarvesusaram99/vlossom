import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vlossom/Cards/artist.dart';
import 'package:vlossom/Cards/squarecards.dart';
import 'package:vlossom/Widgets/myappbar.dart';
import 'package:vlossom/bottomnavbar.dart';

import 'minisongslist.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: MyAppBar(
          title: 'Explore',
        ),
        bottomNavigationBar: BottomNav(index: 1),
        body: Container(
          padding: const EdgeInsets.fromLTRB(30, 60, 30, 20),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xff1d564f),
                Color(0xff031516),
                Color(0xff191b29)
              ])),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //     // height: 20,
                  //     // width: 180,
                  //     child: Row(
                  //   children: [
                  //     Text(
                  //       "What's trending\non the planet",
                  //       style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 25,
                  //           fontWeight: FontWeight.bold),
                  //     ),
                  //     Spacer(),
                  //     Icon(
                  //       Icons.arrow_right_sharp,
                  //       color: Colors.white,
                  //     ),
                  //   ],
                  // )),
                  SizedBox(
                    height: 1,
                  ),

                  Text(
                    "Genre",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Stack(children: [
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Text("Travel",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey.shade50,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic)),
                                  ),
                                  height: 115,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://images.pexels.com/photos/2104152/pexels-photo-2104152.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                                          fit: BoxFit.cover),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ]),
                              SizedBox(
                                width: 20,
                              ),
                              Stack(children: [
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Text("Pop",
                                        style: TextStyle(
                                            fontSize: 18,
                                            // fontFamily: 'roboto',
                                            color: Colors.amber.shade50,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic)),
                                  ),
                                  height: 115,
                                  width: 153,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://res.cloudinary.com/dytnlsq2h/image/upload/v1638775226/black-silhouette-of-female-singer-with-white-spotlights-in-the-picture-id1278304276.jpg"),
                                          fit: BoxFit.cover),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ]),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Stack(children: [
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Text("Party",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.yellow.shade100,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic)),
                                ),
                                height: 115,
                                width: 153,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://images.pexels.com/photos/1105666/pexels-photo-1105666.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                                        fit: BoxFit.cover),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ]),
                            SizedBox(
                              width: 20,
                            ),
                            Stack(children: [
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Text("Energetic",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.red.shade50,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic)),
                                ),
                                height: 115,
                                width: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://images.pexels.com/photos/6978624/pexels-photo-6978624.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                                        fit: BoxFit.cover),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Stack(children: [
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Text("Workout",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.teal.shade100,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic)),
                                ),
                                height: 115,
                                width: 153,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://www.cnet.com/a/img/AoJugu64OJYj6Ft1-EuYvwFo7XU=/1200x675/2020/01/17/5a4e5082-e4ce-45b1-84cd-4c7a4148481c/workout-heapdhones-promo.jpg"),
                                        fit: BoxFit.cover),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ]),
                            SizedBox(
                              width: 20,
                            ),
                            Stack(children: [
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Text("Soul",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic)),
                                ),
                                height: 115,
                                width: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://images.pexels.com/photos/3554374/pexels-photo-3554374.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                                        fit: BoxFit.cover),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Top Creators",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ArtistCard(),
                        SizedBox(
                          width: 20,
                        ),
                        ArtistCard(),
                        SizedBox(
                          width: 20,
                        ),
                        ArtistCard(),
                        SizedBox(
                          width: 20,
                        ),
                        ArtistCard(),
                        SizedBox(
                          width: 20,
                        ),
                        ArtistCard(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Trending Songs",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MiniSongs(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "For you",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SquareCards(),
                        SizedBox(
                          width: 20,
                        ),
                        SquareCards(),
                        SizedBox(
                          width: 20,
                        ),
                        SquareCards(),
                        SizedBox(
                          width: 20,
                        ),
                        SquareCards(),
                        SizedBox(
                          width: 20,
                        ),
                        SquareCards(),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
