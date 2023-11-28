import 'package:flutter/material.dart';

class GroupIcon5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
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
                      backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/peson_2_zd3e9g.png"),
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
                      backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/person_3_vecodz.jpg"),
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
                      backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/dtv3hj7en/image/upload/c_thumb,w_200,g_face/v1701083852/person_3_vecodz.jpg"),
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
                      backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/dtv3hj7en/image/upload/v1701072329/dummy_person_ezzyzx.png"),
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
                      backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/dtv3hj7en/image/upload/c_thumb,w_200,g_face/v1701072329/dummy_person_ezzyzx.png"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
