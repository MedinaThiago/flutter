import 'package:flutter/material.dart';

void main() {
  String nome = "Ana";

  runApp(
    Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            fontSize: 30,
            backgroundColor: Colors.white,
          ),
          children: <TextSpan>[
            TextSpan(
              text: "Olá, ",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: '$nome',
              style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.double,
                  backgroundColor: Colors.green[400]),
            ),
            TextSpan(
                text: '! \nHoje é quinta-feita!',
                style: TextStyle(color: Colors.orange)),
            TextSpan(text: '\nBom dia!', style: TextStyle(color: Colors.green)),
            TextSpan(
                text:
                    '\n\nHoje, você terá que escrever um aplicativo\n em Flutter. O aplicativo deve imprimir um \n texto na tela. Otexto possui trechos com \n estilos diferentes\n\n\n',
                style: TextStyle(backgroundColor: Colors.black, fontSize: 18)),
            TextSpan(
                text: 'Boa prática!\n',
                style: TextStyle(
                    backgroundColor: Colors.black,
                    fontSize: 18,
                    color: Colors.purple)),
            TextSpan(
                text: '=',
                style: TextStyle(
                    backgroundColor: Colors.black,
                    fontSize: 18,
                    color: Colors.green)),
            TextSpan(
                text: 'D',
                style: TextStyle(
                    backgroundColor: Colors.black,
                    fontSize: 18,
                    color: Colors.red)),
            TextSpan(
                text: 'H',
                style: TextStyle(
                    backgroundColor: Colors.black,
                    fontSize: 18,
                    color: Colors.white)),
          ],
        ),
      ),
    ),
  );
}
