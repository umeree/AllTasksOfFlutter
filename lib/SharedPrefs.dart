import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs extends StatefulWidget {
  const SharedPrefs({super.key});

  @override
  State<SharedPrefs> createState() => _SharedPrefsState();
}

class _SharedPrefsState extends State<SharedPrefs> {
  TextEditingController nameController = TextEditingController();

  var setName = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Prefs"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          TextField(
            controller: nameController,
          ),
          ElevatedButton(
            onPressed: () async {
              var name = nameController.text.toString();
              var prefs = await SharedPreferences.getInstance();
              prefs.setString("name", name);
              // prefs.setInt("num", 12);
              setState(() {});
            },
            child: Text("Save"),
          ),
          FutureBuilder(
              future: SharedPreferences.getInstance(),
              builder: (context, AsyncSnapshot<SharedPreferences> snapshot) {
                return Column(
                  children: [
                    Text(snapshot.data!.getString("name").toString()),
                  ],
                );
              })
        ],
      )),
    );
  }
}
