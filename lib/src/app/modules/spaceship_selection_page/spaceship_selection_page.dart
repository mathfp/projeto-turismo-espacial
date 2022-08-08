import 'package:flutter/material.dart';
import 'package:global_solution/src/app/components/component_button.dart';
import 'package:global_solution/src/app/components/component_page.dart';
import 'package:global_solution/src/app/model/spaceship.dart';
import 'package:global_solution/src/app/modules/spaceship_selection_page/spaceship_selection_controller.dart';
import 'package:global_solution/src/app/utils/ui_text.dart';

class SpaceshipSelectionPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _SpaceshipSelectionPage();
  }
}

class _SpaceshipSelectionPage extends State<SpaceshipSelectionPage> {
  Spaceship? _spaceship;

  SpaceshipSelectionController spaceshipController =
      SpaceshipSelectionController();

  late var naveEscolhida = "";
  late var textoSucesso = '';

  @override
  void initState() {
    super.initState();
    spaceshipController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ComponentPage(
      pageTitle: selecaoEspacoNave,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(escolhaEspacoNave,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
            ListTile(
              title: const Text('Gemini'),
              leading: Radio<Spaceship>(
                value: Spaceship.Gemini,
                groupValue: _spaceship,
                onChanged: (Spaceship? value) {
                  setState(() {
                    _spaceship = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Vostok'),
              leading: Radio<Spaceship>(
                value: Spaceship.Vostok,
                groupValue: _spaceship,
                onChanged: (Spaceship? value) {
                  setState(() {
                    _spaceship = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Mercury'),
              leading: Radio<Spaceship>(
                value: Spaceship.Mercury,
                groupValue: _spaceship,
                onChanged: (Spaceship? value) {
                  setState(() {
                    _spaceship = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Voskhod'),
              leading: Radio<Spaceship>(
                value: Spaceship.Voskhod,
                groupValue: _spaceship,
                onChanged: (Spaceship? value) {
                  setState(() {
                    _spaceship = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Soyuz'),
              leading: Radio<Spaceship>(
                value: Spaceship.Soyuz,
                groupValue: _spaceship,
                onChanged: (Spaceship? value) {
                  setState(() {
                    _spaceship = value;
                  });
                },
              ),
            ),
            ComponentButton(
              buttonText: salvar,
              onPressed: () {
                if (_spaceship != null) {
                  textoSucesso = spaceshipController.selectSpaceship(
                      _spaceship, naveEscolhida);
                }
              },
            ),
            const SizedBox(height: 15),
            Text(textoSucesso,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
