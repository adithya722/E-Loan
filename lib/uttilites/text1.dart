import 'package:flutter/material.dart';

class TextBoxWidget extends StatefulWidget {
  final String text;
  final IconData iconName;
  final TextEditingController txtcontroller;
  const TextBoxWidget(
      {super.key,
      required this.text,
      required this.iconName,
      required this.txtcontroller});

  @override
  State<TextBoxWidget> createState() => _TextBoxWidgetState();
}

class _TextBoxWidgetState extends State<TextBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: MediaQuery.of(context).size.height*0.07,
      width: MediaQuery.of(context).size.width*0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),

      child: TextFormField(
        controller: widget.txtcontroller,
        cursorColor:Color.fromARGB(255, 255, 254, 254),
        decoration: InputDecoration(
          hintText: widget.text,
          icon: Icon(
            widget.iconName,color: const Color.fromARGB(255, 14, 65, 107,),
            
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none
        ),
      ),
    );
  }
}
