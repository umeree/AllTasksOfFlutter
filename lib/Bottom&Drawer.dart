import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskers/pages/Add.dart';
import 'package:taskers/pages/Chat.dart';
import 'package:taskers/pages/Home.dart';
import 'package:taskers/pages/Profile.dart';

class BottomAndDrawer extends StatefulWidget {
  const BottomAndDrawer({super.key});

  @override
  State<BottomAndDrawer> createState() => _BottomAndDrawerState();
}

const screens = [Home(), Chats(), Add(), Profie()];

class _BottomAndDrawerState extends State<BottomAndDrawer> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.white),
          title: Text("Bottom Tab and Drawer"),
          centerTitle: true,
        ),
        body: screens[currentIndex],
        drawer: Drawer(
          // backgroundColor: Colors.pink[100],
          width: 300,
          shadowColor: Colors.grey[500],
          child: Container(
            color: Colors.deepPurple[200],
            child: ListView(
              children: [
                ListTile(
                    leading: Icon(Icons.home),
                    title:
                        Text("This is Home and width of home is $screenWidth"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    }),
                ListTile(
                    leading: Icon(Icons.chat),
                    title: Text("Chats"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chats()));
                    }),
                ListTile(
                    leading: Icon(Icons.add),
                    title: Text("Add"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Add())));
                    }),
                ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Profie())));
                    })
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (value) => setState(() {
                  currentIndex = value;
                }),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile')
            ]),
      ),
    );
  }
}
