import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final items = List.generate(15, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text('List Screen', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),)
      ),
      body: Container(
        margin: EdgeInsets.only(top:20),
        color: Colors.grey.shade200,
        child:  ListView.builder(
          itemCount: items.length,
          itemBuilder: (_, index) => Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.lightBlueAccent, width: 1)
            ),
            child: ListTile(
              leading: Icon(Icons.list, color: Colors.blueAccent),
              title: Text(
                items[index],
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ),
          ),
        ),
      )
    );
  }
}
