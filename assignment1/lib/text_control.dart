import 'package:flutter/material.dart';
import 'text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<TextControl> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  var text = 'Hi My name is Harsh Kedia';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                text = 'Hi thi shas been chanaged bythe button';
              });
            },
            child: Text('Click to chaage the text')),
        TextOutput(text),
      ],
    );
  }
}
