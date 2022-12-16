import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UsuariosScreen extends StatelessWidget {
  const UsuariosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de usuarios'),
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Table(
            children: [
              TableRow(children: [Text('Fernando'), Text('Bloqueado')]),
              TableRow(children: [Text('Juanca'), Text('Disponible')])
            ],
          )),
    );
  }
}
