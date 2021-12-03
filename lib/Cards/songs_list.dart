import 'package:flutter/material.dart';

class SongsList extends StatefulWidget {
  const SongsList({ Key? key }) : super(key: key);

  @override
  _SongsListState createState() => _SongsListState();
}

class _SongsListState extends State<SongsList> {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      height: 80.0,
      width: 500.0,
      
      decoration: BoxDecoration(
        // color: Colors.white70,
      borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          // CircleAvatar(
          //      radius: 35.0,
          //      backgroundImage:
          //      AssetImage('assets/gumaan.jpg'),
              
          //      backgroundColor: Colors.transparent,
               
          //    ),

          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage('assets/gumaan.jpg') , fit: BoxFit.fill)
            ),
          ),

          Padding(
            
            padding: const EdgeInsets.fromLTRB(18, 15, 0,0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.black,
                  child: Text("Gumaan" , style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),),
                ) , 
                Container(
                  // color: Colors.black,
                  child: Text("Talha Anjum" , style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70
                  ),))
              ],
            ),
          ),
          // Text("ddk" ,style: TextStyle(color: Colors.white70))
          SizedBox(width: 120,),
        new IconButton(
          color: Colors.white70,
          icon: new Icon(Icons.more_vert),
          tooltip: 'Navigation menu',
          onPressed: () {},
        ),
        ],
      )
    );
  }
}