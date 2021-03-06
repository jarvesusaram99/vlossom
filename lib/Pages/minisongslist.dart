import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vlossom/Pages/models.dart';
import 'package:vlossom/Widgets/playing.dart';
import 'package:vlossom/constant.dart';

Future<List<Post>> fetchPosts() async {
  http.Response response = await http
      .get(Uri.parse("https://leafcreations.in/vlossum_2/getsongs.php"));
  if (response.statusCode == 200) {
    print("200");
    print(response.body);
  } else
    print("400");
  var responseJson = json.decode(response.body);
  print(responseJson.toString());
  return (responseJson as List).map((p) => Post.fromJson(p)).toList();
}

class MiniSongs extends StatefulWidget {
  const MiniSongs({Key? key}) : super(key: key);

  @override
  _MiniSongsState createState() => _MiniSongsState();
}

class _MiniSongsState extends State<MiniSongs> {
  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  // String base_url = "https://www.leafcreations.in/vlossum";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: const BoxDecoration(),
      height: MediaQuery.of(context).size.height / 2.5,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: FutureBuilder(
                future: fetchPosts(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text(
                          "Loading...",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  } else {
                    return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.all(0),
                        // physics: BouncingScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              height: 80.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  // color: Colors.white70,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Playing(
                                                    s: base_url +
                                                        snapshot
                                                            .data[index].image,
                                                    p: base_url +
                                                        snapshot
                                                            .data[index].name,
                                                  )));
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.network(
                                              base_url +
                                                  snapshot.data[index].image,
                                              fit: BoxFit.fill),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              18, 15, 0, 0),
                                          child: Column(
                                            // mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // color: Colors.black,
                                                child: Text(
                                                  "Gumaan",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                  // color: Colors.black,
                                                  child: Text(
                                                "Talha Anjum",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white70),
                                              ))
                                            ],
                                          ),
                                        ),
                                        // Text("ddk" ,style: TextStyle(color: Colors.white70))
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3.29,
                                        ),
                                        // Spacer()
                                      ],
                                    ),
                                  ),
                                  new IconButton(
                                    color: Colors.white70,
                                    icon: new Icon(Icons.more_vert),
                                    tooltip: 'Navigation menu',
                                    onPressed: () {},
                                  ),
                                ],
                              ));
                        });
                  }
                }),
          ),
        ],
      ),
    );
  }
}
