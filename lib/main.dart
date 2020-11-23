import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Não sabendo que era impossível, foi lá e soube!",
    "Nunca acredite em você.",
    "Nunca esqueça que você é limitado.",
    "Nunca foi azar, sempre foi incompetência!",
    "Eu posso, eu quero, eu desisto!",
    "Nenhum obstáculo será grande se a sua vontade de desistir for maior.",
    "Persista, insista e desista"
  ];

  var _fraseGerada = "Clique para gerar uma frase, seu fracassado!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desmotive-se com esse APP"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Image.asset("images/logo.png"),
            Text(_fraseGerada,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              color: Colors.black
            ),
            ),
            RaisedButton(
                child: Text("Nova frase",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
            )
          ],
        ),
      ),
    );
  }
}
