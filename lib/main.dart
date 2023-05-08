import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Role os dados!'),
          backgroundColor: Colors.teal.shade700,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numDadoEsquerdo = 1;
  int numDadoDireito = 1;
  void alterarFaceDosDados() {
    setState(() {
      numDadoDireito = Random().nextInt(6) + 1;
      numDadoEsquerdo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      alterarFaceDosDados();
                    },
                    child: Image.asset("imagens/dado$numDadoEsquerdo.png"),
                  ),
                ),
              ),
              Container(
                width: 1,
                height: 100,
                color: Colors.white,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      alterarFaceDosDados();
                    },
                    child: Image.asset("imagens/dado$numDadoDireito.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "toque na imagem do dado para mudar a face dele",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w200,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
