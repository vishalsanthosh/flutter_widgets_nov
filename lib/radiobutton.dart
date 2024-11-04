import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String? selectedOption="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text("Radio button"),centerTitle: true,
   ),
   body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ListTile(
        title: Text("Option 1"),
        leading: Radio<String>(
          value: "Option 1",
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption=value;
            });
          },
        ),
        
      ),
        ListTile(
        title: Text("Option 2"),
        leading: Radio<String>(
          value: "Option 2",
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption=value;
            });
          },
        ),
        
      ),
        ListTile(
        title: Text("Option 3"),
        leading: Radio<String>(
          value: "Option 3",
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption=value;
            });
          },
        ),
        
      ),
      SizedBox(height: 10,),
      Center(child: Text("selected: $selectedOption"))
    ],
   ),

    );
  }
}