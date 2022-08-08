import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:global_solution/src/app/utils/paddings_size.dart';

class ComponentPage extends StatelessWidget{
  final String pageTitle;
  final Widget body;

  ComponentPage({required this.pageTitle, required this.body});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: PaddingsSize.introPageBorder,
          right: PaddingsSize.introPageBorder,
          top: PaddingsSize.introPageTop,
        ),
        child: SingleChildScrollView(
          child: body,
        ),
      ),
    );
  }
}