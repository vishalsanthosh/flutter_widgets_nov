import 'package:flutter/material.dart';

class checkedBox extends StatefulWidget {
  const checkedBox({super.key});

  @override
  State<checkedBox> createState() => _checkedBoxState();
}

class _checkedBoxState extends State<checkedBox> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: Text("CheckedBox"),centerTitle: true,
      ),
      body: Center(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
             children: [
        Checkbox(value: isChecked,
         onChanged: (bool? value){
          setState(() {
            isChecked =value?? false;
          });
         }),
         Text(
          isChecked? "checked":"unchecked",
          style: TextStyle(fontSize: 18),
         )
             ],
        ),
      ),
    );
  }
}