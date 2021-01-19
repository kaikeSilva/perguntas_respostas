import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  final _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 1},
        {'texto': 'vermelho', 'pontuacao': 2},
        {'texto': 'azul', 'pontuacao': 3},
        {'texto': 'amarelo', 'pontuacao': 4},
      ]
    },
    {
      'texto': 'Qual a sua comida favorita?',
      'respostas': [
        {'texto': 'Lasanha', 'pontuacao': 1},
        {'texto': 'Pizza', 'pontuacao': 2},
        {'texto': 'Maça', 'pontuacao': 3},
        {'texto': 'Hamburger', 'pontuacao': 4},
      ]
    },
    {
      'texto': 'Qual o seu filme favorito?',
      'respostas': [
        {'texto': 'A origem', 'pontuacao': 1},
        {'texto': 'Interstelar', 'pontuacao': 2},
        {'texto': 'Tenet', 'pontuacao': 3},
        {'texto': 'Batman: cavaleiro das trevas', 'pontuacao': 4}
      ]
    },
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  responder: _responder)
              : Resultado(_pontuacaoTotal, _reiniciarQuestionario)),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

// atalho: criação de componente: st + ctrl + space
// atalho: formatação: alt + shift + f
// atalho: multiplos cursores: ctrl + alt + seta
