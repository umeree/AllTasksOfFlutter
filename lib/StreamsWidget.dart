import 'dart:async';

import 'package:flutter/material.dart';

class StreamsWidget extends StatefulWidget {
  const StreamsWidget({super.key});

  @override
  State<StreamsWidget> createState() => _StreamsWidgetState();
}

class _StreamsWidgetState extends State<StreamsWidget> {
  TextEditingController controller = TextEditingController();
  StreamController<String> stream = StreamController<String>.broadcast();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Streams Widget",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: stream.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Center(
                  child: Text(
                    snapshot.data.toString(),
                    style: TextStyle(
                        // color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                );
              } else {
                return Center(
                  child: Text(
                    "No Data ",
                    style: TextStyle(
                        // color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                );
              }
            },
          ),
          StreamBuilder(
            stream: stream.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Center(
                  child: Text(
                    snapshot.data.toString(),
                    style: TextStyle(
                        // color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                );
              } else {
                return Center(
                  child: Text(
                    "No Data ",
                    style: TextStyle(
                        // color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                );
              }
            },
          ),
          SizedBox(
            width: 200,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                  fillColor: Colors.black, focusColor: Colors.black),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                stream.add(controller.text);
              },
              child: Text("Click to change"))
        ],
      ),
    );
  }
}
