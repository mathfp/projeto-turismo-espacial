import 'package:flutter/material.dart';
import 'package:global_solution/src/app/modules/agendamento_page/agendamento_page.dart';
import 'package:global_solution/src/app/modules/cadastro_page/cadastro_page.dart';
import 'package:global_solution/src/app/components/component_button.dart';
import 'package:global_solution/src/app/components/component_card.dart';
import 'package:global_solution/src/app/components/component_page.dart';
import 'package:global_solution/src/app/components/component_popup.dart';
import 'package:global_solution/src/app/modules/spaceship_selection_page/spaceship_selection_page.dart';
import 'package:global_solution/src/app/utils/ui_text.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  late var cadastroSucesso = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ComponentPage(
        pageTitle: menu,
        body: Column(
          children: [
            ComponentCard(
              cardTitle: cadastro,
              icon: Icons.airline_seat_recline_extra_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CadastroPage()),
                );
              },
            ),
            const SizedBox(height: 15),
            ComponentCard(
              cardTitle: selecaoEspacoNave,
              icon: Icons.airplanemode_active_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SpaceshipSelectionPage()),
                );
              },
            ),
            const SizedBox(height: 15),
            ComponentCard(
              cardTitle: agendarViagem,
              icon: Icons.calendar_month_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AgendamentoPage()),
                );
              },
            ),
            const SizedBox(height: 35),
            Text(cadastroSucesso),
            const SizedBox(height: 35),
            ComponentButton(
                buttonText: cadastrarViagem,
                onPressed: () {
                  setState(() {
                    if (cadastroSucesso == "") {
                      cadastroSucesso = "Viagem Cadastrada com Sucesso!";
                    } else {
                      cadastroSucesso = "";
                    }
                  });
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return ComponentPopUp(title: criadoresApp, buttonText: "Sair");
            },
          );
        },
        label: Text(criadores),
      ),
    );
  }
}
