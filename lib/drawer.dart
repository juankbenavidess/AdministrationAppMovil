import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key, this.ventana});
  final ventana;

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: const Icon(Icons.supervised_user_circle_outlined),
            title: const Text("Usuarios"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.app_blocking),
            title: const Text("Usuarios bloqueados"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.sim_card_alert_outlined),
            title: Text("Usuarios reportados"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
