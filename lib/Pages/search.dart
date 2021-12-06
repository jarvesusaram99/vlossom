import 'package:flutter/material.dart';
import 'package:vlossom/bottomnavbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(index: 2),
      body: Center(child: Text("I am search")),
    );
  }
}
