import 'package:flutter/cupertino.dart';
import 'package:global_solution/src/app/model/passageiro_model.dart';

class CadastroController extends ChangeNotifier{

  List<PassageiroModel> passageiroList = [
    PassageiroModel(name: 'Sharon J. Babineaux', age: '27'),
    PassageiroModel(name: 'Richard S. Snyder', age: '48'),
    PassageiroModel(name: 'Douglas J. Colon', age: '36'),
  ];

  addNewPassageiro({required String passageiroNome, required String passageiroIdade}){
    passageiroList.insert(passageiroList.length, PassageiroModel(name: passageiroNome, age: passageiroIdade));
    notifyListeners();
  }
}