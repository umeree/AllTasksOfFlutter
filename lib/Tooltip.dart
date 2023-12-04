import 'package:flutter/material.dart';

class ToolTipWidget extends StatelessWidget {
  const ToolTipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tooltip "),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              child: Tooltip(
                waitDuration: Duration(seconds: 2),
                showDuration: Duration(seconds: 2),
                padding: EdgeInsets.all(8),
                height: 35,
                textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
                message: "Me Account",
                child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.account_box,
                      size: 100,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
