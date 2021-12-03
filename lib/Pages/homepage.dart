
import 'package:flutter/material.dart';
import 'package:vlossom/Cards/albums_cards.dart';
import 'package:vlossom/Cards/artist.dart';
import 'package:vlossom/Cards/songs_list.dart';
import 'package:vlossom/Widgets/appdrawer.dart';
import 'package:vlossom/Widgets/carousel.dart';
import 'package:vlossom/Widgets/myappbar.dart';




class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
         extendBodyBehindAppBar: true,
        
        appBar: const MyAppBar(),
        drawer: const AppDrawer(),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff070919), Color(0xff191b29)
                  ]
                  )
                  ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:  SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 70, 30, 20),
          
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                     const Mycarousel(),
              const SizedBox(
                height: 30,
              ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          
                          child: const Text("New Albums" , style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),),
                        ),
                        Container(
          
                          child: Text("See all" ,textAlign: TextAlign.end, style: TextStyle(
                            color: Colors.white
                          ),),
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
                                      AlbumCard(), SizedBox(width: 14,),
                                        AlbumCard(),SizedBox(width: 14,),
                                          AlbumCard(),SizedBox(width: 14,),
                                             AlbumCard(),SizedBox(width: 14,),
                                        AlbumCard(),SizedBox(width: 14,),
                                          AlbumCard(),
                             ],
                           ),
                         ),
          
                           const SizedBox(
                           height: 30,
                         ),
                           Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: const Text("Songs list" , style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),),
                        ),
                        
                        Container(
                           child: const Text("See all" ,textAlign: TextAlign.end, style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                         ]),
                         const SizedBox(
                           height: 20,
                         ),

                         SingleChildScrollView(
                           clipBehavior:Clip.antiAlias,
                           physics: BouncingScrollPhysics(),
                           scrollDirection: Axis.horizontal,
                           child: Row(
                             children: [
                                 Column(
                             children: const [
                              SongsList(), 
                                SongsList(),
                                 SongsList(), 
                                SongsList(),
                                  ],  ),
                            Column(
                              children: const [
                              SongsList(), 
                                SongsList(),
                                 SongsList(), 
                                SongsList(),
                                            ],
                                          ),
                                   
                             ],
                           ),
                         )
            , 
           SizedBox(
                           height: 30,
                         ),  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: const Text("Top Artist" , style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),),
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
                  ArtistCard() ,SizedBox(width: 15,),
                          ArtistCard() ,SizedBox(width: 15,),
                                      ArtistCard() ,SizedBox(width: 15,),
                                      ArtistCard() ,SizedBox(width: 15,),
               ],
             ),
           )
            
             ]
                )
            ),

          )
          )
      )
    );
  }
}
