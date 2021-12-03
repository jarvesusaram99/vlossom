import 'package:flutter/material.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Drawer(  
        child: SafeArea(
          child: ListView(  
            // Important: Remove any padding from the ListView.  
            padding: EdgeInsets.zero,  
            children: <Widget>[  
              const UserAccountsDrawerHeader(  
                accountName: Text("Abhishek Mishra"),  
                accountEmail: Text("abhishekm977@gmail.com"),  
                currentAccountPicture: CircleAvatar(  
                  backgroundColor: Colors.orange,  
                  child: Text(  
                    "A",  
                    style: TextStyle(fontSize: 40.0),  
                  ),  
                ),  
              ),  
              ListTile(  
                leading:const Icon(Icons.home), title: const Text("Home"),  
                onTap: () {  
                  Navigator.pop(context);  
                },  
              ),  
              ListTile(  
                leading:const Icon(Icons.settings), title: Text("Settings"),  
                onTap: () {  
                  Navigator.pop(context);  
                },  
              ),  
              ListTile(  
                leading:const Icon(Icons.contacts), title: Text("Contact Us"),  
                onTap: () {  
                  Navigator.pop(context);  
                },  
              ),  
            ],  
          ),
        ),  
    );
}
}