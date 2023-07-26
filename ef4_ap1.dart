import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tela1(),
    );
  }
}

class tela1 extends StatelessWidget {
  const tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Escolheu azul'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('clicou no botao');

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return tela2();
              }));
            },
            child: Text('o proximo é vermelho'),
          ),
        ),
      ),
    ));
  }
}

class tela2 extends StatelessWidget {
  const tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Escolheu vermelho'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('clicou no botao');

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return tela3();
              }));
            },
            child: Text('o proximo é verde'),
          ),
        ),
      ),
    ));
  }
}

class tela3 extends StatelessWidget {
  const tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            title: Text('Escolheu verde'),
            backgroundColor: Colors.green,
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                print('clicou no botao');

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return tela1();
                }));
              },
              child: Text('o proximo é azul'),
            ),
          ),
        ),
      ),
    );
  }
}
