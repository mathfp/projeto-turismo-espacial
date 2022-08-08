// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:global_solution/src/app/components/component_button.dart';
import 'package:global_solution/src/app/components/component_form.dart';
import 'package:global_solution/src/app/modules/home/home_page.dart';
import 'package:global_solution/src/app/utils/paddings_size.dart';
import 'package:global_solution/src/app/utils/ui_text.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: PaddingsSize.introPageBorder,
            right: PaddingsSize.introPageBorder,
            top: PaddingsSize.introPageTop,
          ),
          child: Column(
            children: [
              Text(
                turismoEspacial,
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 45,
              ),
              Image.asset(
                'assets/images/spaceship-logo.png',
                width: 400,
                height: 300,
              ),
              const SizedBox(
                height: 45,
              ),
              Text(
                loginFuncionario,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              ComponentForm(
                label: user,
              ),
              const SizedBox(height: 15),
              ComponentForm(
                label: password,
              ),
              const SizedBox(height: 15),
              ComponentButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => HomePage()),
                    ),
                  );
                },
                buttonText: login,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
