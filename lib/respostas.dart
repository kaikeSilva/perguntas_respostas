import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() onSelectedButton;

  Resposta(this.resposta, this.onSelectedButton);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(resposta),
        onPressed: onSelectedButton,
      ),
    );
  }
}
