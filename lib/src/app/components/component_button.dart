import 'package:flutter/material.dart';

class ComponentButton extends StatelessWidget{
  final String buttonText;
  final Function()? onPressed;

  ComponentButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Align(
          alignment: Alignment.center,
          child: Text(buttonText, style: const TextStyle(fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}