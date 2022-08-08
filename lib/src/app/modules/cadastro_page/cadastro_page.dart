import 'package:flutter/material.dart';
import 'package:global_solution/src/app/components/component_button.dart';
import 'package:global_solution/src/app/components/component_card.dart';
import 'package:global_solution/src/app/components/component_card_content.dart';
import 'package:global_solution/src/app/components/component_form.dart';
import 'package:global_solution/src/app/components/component_page.dart';
import 'package:global_solution/src/app/modules/cadastro_page/cadastro_controller.dart';
import 'package:global_solution/src/app/utils/ui_text.dart';

class CadastroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CadastroPage();
  }
}

class _CadastroPage extends State<CadastroPage> {
  TextEditingController cadastroNameEditingController = TextEditingController();
  TextEditingController cadastroAgeEditingController = TextEditingController();

  FocusNode cadastroNameFocus = FocusNode();
  FocusNode cadastroAgeFocus = FocusNode();

  CadastroController cadastroController = CadastroController();

  @override
  void initState() {
    super.initState();
    cadastroController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ComponentPage(
      pageTitle: cadastro,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ComponentForm(
              label: nomePassageiro,
              focusNode: cadastroNameFocus,
              userInputController: cadastroNameEditingController,
              onEditingComplete: () {
                cadastroAgeFocus.nextFocus();
              },
            ),
            const SizedBox(height: 15),
            ComponentForm(
              label: idadePassageiro,
              focusNode: cadastroAgeFocus,
              userInputController: cadastroAgeEditingController,
            ),
            const SizedBox(height: 15),
            ComponentButton(
              buttonText: cadastrar,
              onPressed: () {
                if (cadastroNameEditingController.text != "" &&
                    cadastroAgeEditingController.text != "") {
                  cadastroController.addNewPassageiro(
                    passageiroNome: cadastroNameEditingController.text,
                    passageiroIdade: cadastroAgeEditingController.text,
                  );
                }
                cadastroNameEditingController.clear();
                cadastroAgeEditingController.clear();
              },
            ),
            const SizedBox(height: 20),
            const Text(
              lista,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 20),
            ListView.separated(
              shrinkWrap: true,
              itemCount: cadastroController.passageiroList.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 15),
              itemBuilder: (context, index) {
                var cadastroItems = cadastroController.passageiroList[index];
                return ComponentCardContent(
                    leftText: cadastroItems.name, rightText: cadastroItems.age);
              },
            ),
          ],
        ),
      ),
    );
  }
}
