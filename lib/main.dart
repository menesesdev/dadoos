import 'package:flutter/material.dart';

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

class Dadoos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var numDadoEsquerdo = 1;
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
                    onPressed: () {},
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
                    onPressed: () {},
                    child: Image.asset("imagens/dado1.png"),
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
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
