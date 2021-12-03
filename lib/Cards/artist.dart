import 'package:flutter/material.dart';

class ArtistCard extends StatefulWidget {
  const ArtistCard({ Key? key }) : super(key: key);

  @override
  _ArtistCardState createState() => _ArtistCardState();
}

class _ArtistCardState extends State<ArtistCard> {
  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: [
        CircleAvatar(
                    radius: 70.0,
                    backgroundImage:
                      AssetImage('assets/Eminem.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Eminem" , style: TextStyle(
                   fontSize: 20,
                   color: Colors.white,
                   fontWeight: FontWeight.bold
                  ),)
      ],
    );
  }
}