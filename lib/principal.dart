import 'package:administration_appmovil/drawer.dart';

import 'package:administration_appmovil/screens/usuarios_bloqueados_screen.dart';
import 'package:administration_appmovil/screens/usuarios_reportados_screen.dart';
import 'package:administration_appmovil/screens/usuarios_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:side_navigation/side_navigation.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  List<Widget> views = const [
    UsuariosScreen(),
    UsuariosBloqueadosScreen(),
    UsuariosReportadosScreen()
  ];

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Administración',
        textAlign: TextAlign.center,
      )),
      body: Row(children: [
        SideNavigationBar(
          selectedIndex: selectIndex,
          items: const [
            SideNavigationBarItem(icon: Icons.verified_user, label: 'Usuarios'),
            SideNavigationBarItem(
                icon: Icons.verified_user, label: 'Usuarios bloqueados'),
            SideNavigationBarItem(
                icon: Icons.verified_user, label: 'Usuarios reportados')
          ],
          onTap: (value) => setState(() {
            selectIndex = value;
          }),
        ),
        Expanded(child: views.elementAt(selectIndex))
      ]),
      //drawer: MyDrawer(),
    );
  }
}
