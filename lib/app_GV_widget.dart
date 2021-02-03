import 'package:GA_Pave/App_controle.dart';
import 'package:flutter/material.dart';

import 'Home_page_widget.dart';

class app_gv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, chield) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.blue,
                brightness: AppController.instance.tema_noturno
                    ? Brightness.dark
                    : Brightness.light),
            home: HomePage(),
          );
        });
  }
}
