import 'package:flutter/material.dart';

class ComponentForm extends StatelessWidget{
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;
  final FocusNode? focusNode;

  ComponentForm({required this.label, this.onEditingComplete, this.userInputController, this.focusNode});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onEditingComplete: onEditingComplete,
      controller: userInputController,
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(),
      )
    );
  }
}