import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return "parabens!!!";
    }
    return "impressionante!!";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado + " :" + pontuacao.toString(),
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          child: Text(
            "Reiniciar",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          color: Colors.blue,
          onPressed: quandoReiniciarQuestionario,
        ),
      ],
    );
  }
}
