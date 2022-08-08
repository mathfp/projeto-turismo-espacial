import 'package:flutter/material.dart';
import 'package:global_solution/src/app/components/component_button.dart';
import 'package:global_solution/src/app/components/component_form.dart';
import 'package:global_solution/src/app/components/component_page.dart';
import 'package:global_solution/src/app/utils/ui_text.dart';

// ignore: use_key_in_widget_constructors
class AgendamentoPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _AgendamentoPage();
  }
}

class _AgendamentoPage extends State<AgendamentoPage> {
  TextEditingController agendamentoDiaEditingController =
      TextEditingController();
  TextEditingController agendamentoMesEditingController =
      TextEditingController();
  TextEditingController agendamentoAnoEditingController =
      TextEditingController();

  FocusNode agendamentoDiaFocus = FocusNode();
  FocusNode agendamentoMesFocus = FocusNode();
  FocusNode agendamentoAnoFocus = FocusNode();

  var agendamento = "";

  @override
  Widget build(BuildContext context) {
    return ComponentPage(
      pageTitle: agendarViagem,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              selecionarDataViagem,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  child: ComponentForm(
                    label: dia,
                    focusNode: agendamentoDiaFocus,
                    userInputController: agendamentoDiaEditingController,
                    onEditingComplete: () {
                      agendamentoMesFocus.nextFocus();
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '/',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 80,
                  child: ComponentForm(
                    label: mes,
                    focusNode: agendamentoMesFocus,
                    userInputController: agendamentoMesEditingController,
                    onEditingComplete: () {
                      agendamentoAnoFocus.nextFocus();
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '/',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 80,
                  child: ComponentForm(
                    label: ano,
                    focusNode: agendamentoAnoFocus,
                    userInputController: agendamentoAnoEditingController,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ComponentButton(
              buttonText: agendar,
              onPressed: () {
                setState(() {
                  var dia = agendamentoDiaEditingController.text;
                  var mes = agendamentoMesEditingController.text;
                  var ano = agendamentoAnoEditingController.text;

                  agendamento =
                      'Viagem agendada com sucesso para a data: $dia/$mes/$ano.';
                });
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Text(agendamento),
          ],
        ),
      ),
    );
  }
}
