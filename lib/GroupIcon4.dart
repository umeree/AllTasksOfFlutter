import 'package:flutter/material.dart';

class GroupIcon4 extends StatelessWidget {
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
                left: 25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 25,
                    height: 25,
                    color: Colors.black,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/dtv3hj7en/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1701083852/person_1_d8qvo9.webp"),
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
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/dtv3hj7en/image/upload/v1701072329/dummy_person_ezzyzx.png"),
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
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/person_3_vecodz.jpg"),
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
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/dtv3hj7en/image/upload/e_improve,w_300,h_600,c_thumb,g_auto/v1701083852/peson_2_zd3e9g.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
