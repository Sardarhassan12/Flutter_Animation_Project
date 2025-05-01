import 'package:flutter/material.dart';
import 'list_screen.dart';
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          title: Text('Flutter App', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),)
      ),
      drawer: Drawer(
        backgroundColor: Colors.lightBlueAccent.shade100,
        child: ListView(
          children: [
            DrawerHeader(child: Text('Menu', style: TextStyle(fontSize: 20),)),
            ListTile(
              title: Text('Home', style: TextStyle(fontSize: 17),),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('List Screen',  style: TextStyle(fontSize: 17),),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ListScreen()));
              },
            ),
            ListTile(
              title: Text('About Screen',  style: TextStyle(fontSize: 17),),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AboutScreen()));
              },
            ),
          ],
        ),
      ),
      body: Center(
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.only(top:60),
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child:  ClipRRect(
                  borderRadius: BorderRadius.circular(20), // round image edges to match
                  child: SizedBox(
                    width: 300,
                    height: 400,
                    child: Image.network(
                      'https://picsum.photos/300/400',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Text("Welcome to My App!", style: TextStyle(fontSize: 35, color: Colors.grey.shade800, fontWeight: FontWeight.bold)),

              ]
          )
          )
    );
  }
}
