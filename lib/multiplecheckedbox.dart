import 'package:flutter/material.dart';

class MultipleCheck extends StatefulWidget {
  const MultipleCheck({super.key});

  @override
  State<MultipleCheck> createState() => _MultipleCheckState();
}

class _MultipleCheckState extends State<MultipleCheck> {

  List<Map<String,dynamic>> items=[
 {'name':'Item 1', 'isChecked': false},
 {'name':'Item 1', 'isChecked': false},
 {'name':'Item 1', 'isChecked': false},
 {'name':'Item 1', 'isChecked': false},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Multiple checked box'),centerTitle: true,),
    body: ListView(
      children: 
        items.map((item){
         return CheckboxListTile(
          title: Text(item['name']),
          value:item['isChecked'], onChanged: (bool? value){
            setState(() {
              item['isChecked']=value ?? false;
            });
          });
        }).toList()
      
    ),
    );
  }
}