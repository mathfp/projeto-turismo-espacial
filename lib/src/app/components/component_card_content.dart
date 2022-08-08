import 'package:flutter/material.dart';

class ComponentCardContent extends StatelessWidget {

  final String? leftText;
  final String? rightText;

  ComponentCardContent({required this.leftText, required this.rightText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.cyan, width: 2)),
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Text('Nome: $leftText'),
          const Spacer(),
          Text('Idade: $rightText'),
        ],
      ),
    );
  }
}
