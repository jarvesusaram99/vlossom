import 'package:flutter/material.dart';
import 'package:vlossom/Widgets/myappbar.dart';
import 'package:vlossom/bottomnavbar.dart';

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
                      colors: [Color(0xff070919), Color(0xff191b29)])),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          // height: 20,
                          // width: 180,
                          child: Row(
                        children: [
                          Icon(
                            Icons.new_releases,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "New Releases",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          Icon(
                            Icons.arrow_right_sharp,
                            color: Colors.white,
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                          // height: 20,
                          // width: 180,
                          child: Row(
                        children: [
                          Icon(
                            Icons.add_chart_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Charts",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 195,
                          ),
                          Icon(
                            Icons.arrow_right_sharp,
                            color: Colors.white,
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                          // height: 20,
                          // width: 180,
                          child: Row(
                        children: [
                          Icon(
                            Icons.recommend,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Made for you",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Icon(
                            Icons.arrow_right_sharp,
                            color: Colors.white,
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Browse all",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 115,
                            width: 153,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 115,
                            width: 153,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 115,
                            width: 153,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 115,
                            width: 153,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 115,
                            width: 153,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 115,
                            width: 153,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          )
                        ],
                      )
                    ],
                  )))),
    );
  }
}
