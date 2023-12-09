import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatefulWidget {
  const FutureBuilderWidget({super.key});

  @override
  State<FutureBuilderWidget> createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  Future<List<String>>? getData() {
    return Future.delayed(Duration(seconds: 5), () {
      return ["Hello", "World", "Data", "is", "Here"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<String>>(
            future: getData(),
            builder: (contex, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          leading: Text("${index + 1}"),
                          title: Text("${snapshot.data?[index]}"),
                        );
                      }));
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error} occured");
                }
              }
              return CircularProgressIndicator(
                color: Colors.white,
              );
            }),
      ),
    );
  }
}
