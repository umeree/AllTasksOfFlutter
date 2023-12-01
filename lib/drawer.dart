import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Drawer"),
        ),
        drawer: Drawer(
          // backgroundColor: Colors.pink[100],
          width: 300,
          shadowColor: Colors.grey[500],
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text("Umer Nadeem"),
                accountEmail: const Text("umernadeam@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.pink[200],
                  child: const Text("U"),
                ),
              ),
              const ListTile(
                title: Text("Hello"),
                subtitle: Text("World"),
              ),
              const ListTile(
                title: Text("Hello"),
                subtitle: Text("World"),
              ),
              const ListTile(
                title: Text("Hello"),
                subtitle: Text("World"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
