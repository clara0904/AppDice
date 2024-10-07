import 'dart:math';

import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'AppDice',
      debugShowCheckedModeBanner: false,
      home: AppDice(),
    );
  }
}

class AppDice extends StatefulWidget {
  const AppDice({super.key});
   @override
  State<StatefulWidget> createState() => _AppDiceState();
}

class _AppDiceState extends State<AppDice> {

  int dadoEsquerda = 1;
  int dadoDireita = 1;


  int sorteiaValor(){
    Random a = Random();
    int numeroSorteado = a.nextInt(6)+1;
    return numeroSorteado;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee', style: TextStyle(color: Colors.white),), 
          centerTitle: true,
          backgroundColor: Colors.red
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton( 
              icon: Image.asset(
                'imagens/dice$dadoEsquerda.png', 
                height: 150.0,),
                onPressed: () {
                  setState(() {
                    dadoEsquerda = sorteiaValor();
                  });
                },
              ),
              
              IconButton( 
              icon: Image.asset(
                'imagens/dice$dadoDireita.png', 
                height: 150.0,),
                onPressed: () {
                  setState(() {
                    dadoDireita = sorteiaValor();
                  });
                },
              ),
            ],
          )
        ),
      ),
    );
  }
}