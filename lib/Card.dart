import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.pink[300],
          semanticContainer: true,
          borderOnForeground: true,
          shape: BorderDirectional(bottom: BorderSide(width: 5)),
          margin: EdgeInsets.all(20),
          color: Colors.pink[50],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.add),
                title: Text("Hello"),
                subtitle: Text("World"),
                trailing: Icon(Icons.alarm),
              )
            ],
          ),
        ),
      ),
    );
  }
}
