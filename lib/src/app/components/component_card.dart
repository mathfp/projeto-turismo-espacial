import 'package:flutter/material.dart';

class ComponentCard extends StatelessWidget{
  final Function()? onTap;
  final String cardTitle;
  final IconData? icon;

  ComponentCard({required this.cardTitle, required this.onTap, this.icon});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.cyan ,width: 2),
        ),
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            Text(cardTitle, style: TextStyle(fontSize: 25),),
            Spacer(),
            Icon(icon, size: 40,)
          ],
        ),
      ),
    );
  }
}