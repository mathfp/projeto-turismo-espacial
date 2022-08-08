// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComponentPopUp extends StatelessWidget {
  final String title;
  final String buttonText;

  ComponentPopUp({required this.title, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: SingleChildScrollView(
        child: Container(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Nome: Matheus Ferreira Pinheiro - RM: 84569"),
              SizedBox(height: 5),
              Text("Nome: Giovanni Andrade Ramos - RM: 80237")
            ],
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(buttonText),
        ),
      ],
    );
  }
}
