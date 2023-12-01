import 'package:flutter/material.dart';

class alertDialog extends StatelessWidget {
  const alertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fade Image"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                        title: Text("This is Alert Dialog"),
                        icon: Icon(Icons.access_alarm_outlined),
                        titlePadding: EdgeInsets.all(8),
                        titleTextStyle: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontFamily: AutofillHints.birthday,
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                        content: AboutListTile(
                          aboutBoxChildren: [
                            Text("Hello"),
                            Text("Hello"),
                            Text("Hello"),
                            Text("Hello"),
                            Text("Hello"),
                          ],
                        ),
                        contentPadding: EdgeInsets.all(8),
                        actions: [Text("Hello"), Text("World")],
                        actionsPadding: EdgeInsets.all(10),
                        actionsAlignment: MainAxisAlignment.spaceEvenly,
                        actionsOverflowAlignment: OverflowBarAlignment.center,
                        actionsOverflowButtonSpacing:
                            BorderSide.strokeAlignCenter,
                        backgroundColor: Colors.red,
                        elevation: BorderSide.strokeAlignOutside,
                        shadowColor: Colors.amberAccent,
                        buttonPadding: EdgeInsets.all(20),
                        scrollable: false,
                        shape: CircleBorder(),
                        alignment: Alignment.centerLeft,
                      ));
            },
            child: Text("Open to get Alert"),
          ),
        ));
  }
}
