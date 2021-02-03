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
        actions: [CustomSwitch()],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 380,
              height: 160,
              color: Colors.black,
            ),
            Container(
              width: 380,
              height: 160,
              color: Colors.black,
            ),
            Container(
              width: 380,
              height: 160,
              color: Colors.black,
            ),
            Container(
              width: 380,
              height: 160,
              color: Colors.black,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            contagem++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
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
