import 'package:flutter/material.dart';
import 'package:global_solution/src/app/modules/login_page/login_page.dart';
import 'package:global_solution/src/app/theme/theme.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: lightTheme,
      home: LoginPage(),
    );
  }
}