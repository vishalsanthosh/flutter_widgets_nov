import 'package:flutter/material.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({super.key});

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popupmenu'),
        actions: 
          <Widget>
        [
          PopupMenuButton(
            onSelected: (value){
              print(value);
            },
            itemBuilder: (BuildContext context){
              return {
                'Option 1','Option 2','Option 3'
              }.map((String choice){
                return PopupMenuItem<String>(
                  value:choice,
                  child: Text(choice));
              }).toList();
            })
        ],
      ),
      body: Center(child: Text('Click on top right')),
    );
  }
}