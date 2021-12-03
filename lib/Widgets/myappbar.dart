import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget  implements PreferredSizeWidget {
  const MyAppBar({ Key? key }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0,16,0),
      child: AppBar(
       backgroundColor: Colors.transparent,
            elevation: 0,
            title: Center(child: Text("Vlossom")),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search))
            ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}