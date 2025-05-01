import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final items = List.generate(6, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text('List Screen', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),)
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: items.length,
          itemBuilder: (_, index) => Card(
            color: Colors.lightBlueAccent.shade100,
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.image, size: 50),
                SizedBox(height: 10),
                Text(items[index]),
              ],
            ),
          ),
        ),
      )
    );
  }
}
