import 'package:GA_Pave/App_controle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contagem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("G&V - Pavês"),
        actions: [Botao_dark()],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Contenes(), Contenes(), Contenes(), Contenes()],
        ),
      ),
      //floatingActionButton: FloatingActionButton(
      //child: Icon(Icons.add),
      //onPressed: () {
      //setState(() {
      //contagem++;
      //});
      //},
      //),
    );
  }
}

class Botao_dark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.tema_noturno,
      onChanged: (value) {
        AppController.instance.changeThene();
      },
    );
  }
}

class Contenes extends StatefulWidget {
  final String link_imagem;

  const Contenes({Key key, this.link_imagem}) : super(key: key);

  @override
  _ContenesState createState() => _ContenesState();
}

class _ContenesState extends State<Contenes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: 400,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(
                  "https://docesmomentos.com/wp-content/uploads/2019/06/pave-de-chocolate.png"))),
    );
  }
}
