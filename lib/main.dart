import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'GroupIcon3.dart';
import 'GroupIcon4.dart';
import 'GroupIcon5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Widgets Pro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.red,
        ),
        backgroundColor: Colors.amber,
        surfaceTintColor: Colors.black,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: 400,
                  height: 280,
                  color: Colors.pink,
                ),
                Positioned(
                  left: 100,
                  top: 40,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    width: 200,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.network(
                        "https://res.cloudinary.com/dtv3hj7en/image/upload/v1700477124/cld-sample-2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 125,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        "https://res.cloudinary.com/dtv3hj7en/image/upload/v1700477124/cld-sample-3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ]),
              Column(children: [
                ElevatedButton(
                  child: const Text("List Tile View"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FourthRoute(),
                        ));
                  },
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

//Second Route
class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fourth Route"),
        ),
        body: MyListView());
  }
}

class MyListView extends StatelessWidget {
  int? mapLength;
  final List<Map<String, dynamic>> items = [
    {
      'title': 'Umer',
      'subtitle': '03001234567',
      'active': true,
      'image':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/person_1_d8qvo9.webp'
    },
    {
      'title': 'Hassan',
      'subtitle': '03000000000',
      'active': false,
      'image':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/person_1_d8qvo9.webp',
      'image2':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/e_improve,w_300,h_600,c_thumb,g_auto/v1701072329/dummy_person_ezzyzx.png',
      'image3':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/person_3_vecodz.jpg',
    },
    {
      'title': 'Ali',
      'subtitle': '03007654321',
      'active': true,
      'image':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/person_1_d8qvo9.webp',
      'image2':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/e_improve,w_300,h_600,c_thumb,g_auto/v1701072329/dummy_person_ezzyzx.png',
      'image3':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/person_3_vecodz.jpg',
      'image4':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/peson_2_zd3e9g.png',
    },
    {
      'title': 'Hamza',
      'subtitle': '03112233445',
      'active': false,
      'image':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/person_1_d8qvo9.webp',
      'image2':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/e_improve,w_300,h_600,c_thumb,g_auto/v1701072329/dummy_person_ezzyzx.png',
      'image3':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/person_3_vecodz.jpg',
      'image4':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/peson_2_zd3e9g.png',
      'image5':
          'https://res.cloudinary.com/dtv3hj7en/image/upload/v1701072329/dummy_person_ezzyzx.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              int mapLength = items[index].length;

              if (mapLength == 4) {
                return ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                        backgroundImage: NetworkImage(items[index]['image'])),
                  ),
                  title: Text(items[index]['title']),
                  subtitle: Text(items[index]['subtitle']),
                  trailing: items[index]['active']
                      ? Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                        )
                      : Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                );
              } else if (mapLength == 6) {
                return ListTile(
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 25,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 25,
                              height: 25,
                              color: Colors.pink,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(items[index]['image']),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 25,
                          left: 25,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 25,
                              height: 25,
                              color: Colors.purple,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(items[index]['image2']),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12.5,
                          top: 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 25,
                              height: 25,
                              color: Colors.amberAccent,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(items[index]['image3']),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  title: Text(items[index]['title']),
                  subtitle: Text(items[index]['subtitle']),
                  trailing: items[index]['active']
                      ? Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                        )
                      : Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                );
              } else if (mapLength == 7) {
                return ListTile(
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 25,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 25,
                              height: 25,
                              color: Colors.black,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(items[index]['image']),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 25,
                          top: 25,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 25,
                              height: 25,
                              color: Colors.amber,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(items[index]['image2']),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 25,
                              height: 25,
                              color: Colors.pink,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(items[index]['image3']),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 25,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 25,
                              height: 25,
                              color: Colors.grey,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(items[index]['image4']),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  title: Text(items[index]['title']),
                  subtitle: Text(items[index]['subtitle']),
                  trailing: items[index]['active']
                      ? Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                        )
                      : Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                );
              } else if (mapLength == 8) {
                return ListTile(
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Container(
                              width: 20,
                              height: 20,
                              color: Colors.grey,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(items[index]['image']),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Container(
                              width: 20,
                              height: 20,
                              color: Colors.pink,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(items[index]['image2']),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30,
                          top: 30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Container(
                              width: 20,
                              height: 20,
                              color: Colors.blue,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(items[index]['image3']),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          left: 15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Container(
                              width: 20,
                              height: 20,
                              color: Colors.black,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(items[index]['image4']),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Container(
                              width: 20,
                              height: 20,
                              color: Colors.amber,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(items[index]['image5']),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  title: Text(items[index]['title']),
                  subtitle: Text(items[index]['subtitle']),
                  trailing: items[index]['active']
                      ? Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                        )
                      : Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                );
              } else {
                return Container(
                  child: Text('Unsupported Map Length: $mapLength'),
                );
              }
            }));
  }
}