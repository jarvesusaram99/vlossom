import 'package:flutter/material.dart';
import 'package:vlossom/Widgets/playing.dart';

class AlbumCard extends StatefulWidget {
  const AlbumCard({Key? key}) : super(key: key);

  @override
  _AlbumCardState createState() => _AlbumCardState();
}

class _AlbumCardState extends State<AlbumCard> {
// List album_image = ['assets/eminem_marshal.jpg' , 'assets/elegant.jpg' , 'assets/'];
// List album_text = [ 'Marshal'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/eminem_marshal.jpg'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(12)),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          "The Marshall",
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.white,
              // fontWeight: FontWeight.bold,
              fontSize: 13),
        ),
      ],
    );
  }
}
