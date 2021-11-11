import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String title;
  final Color colorValue;
  final Function handleClick;

  Button(this.title, this.colorValue, this.handleClick, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            child: Text(title), 
            onPressed: () => handleClick(),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorValue)),
            );
  }
}