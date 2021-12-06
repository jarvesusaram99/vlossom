import 'package:flutter/material.dart';
import 'package:vlossom/Cards/albums_cards.dart';
import 'package:vlossom/Cards/artist.dart';
import 'package:vlossom/Cards/songs_list.dart';
import 'package:vlossom/Pages/minisongslist.dart';
import 'package:vlossom/Pages/models.dart';
import 'package:vlossom/Widgets/appdrawer.dart';
import 'package:vlossom/Widgets/carousel.dart';
import 'package:vlossom/Widgets/myappbar.dart';
import 'package:vlossom/bottomnavbar.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Post>> fetchPosts() async {
  http.Response response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
  print(response.body);
  var responseJson = json.decode(response.body);
  return (responseJson as List).map((p) => Post.fromJson(p)).toList();
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: BottomNav(index: 0),
            extendBodyBehindAppBar: true,
            appBar: MyAppBar(
              title: 'Vlossom',
            ),
            // drawer: const AppDrawer(),
            body: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff070919), Color(0xff191b29)])),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 70, 30, 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Mycarousel(),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: const Text(
                                      "New Albums",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "See all",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ]),
                            const SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: const [
                                  AlbumCard(),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  AlbumCard(),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  AlbumCard(),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  AlbumCard(),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  AlbumCard(),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  AlbumCard(),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: const Text(
                                      "Songs list",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SongsList()));
                                      },
                                      child: Text(
                                        "See all",
                                        textAlign: TextAlign.end,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ]),
                            SizedBox(
                              height: 20,
                            ),
                            MiniSongs(),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: const Text(
                                      "Top Artist",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                ]),
                            const SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ArtistCard(),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  ArtistCard(),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  ArtistCard(),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  ArtistCard(),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                            )
                          ])),
                ))));
  }
}
