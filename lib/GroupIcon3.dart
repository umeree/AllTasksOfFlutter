import 'package:flutter/material.dart';

class GroupIcon3 extends StatelessWidget {
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
                top: 25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 25,
                    height: 25,
                    color: Colors.pink,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/dtv3hj7en/image/upload/v1701072329/dummy_person_ezzyzx.png"),
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
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/peson_2_zd3e9g.png"),
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
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/dtv3hj7en/image/upload/v1701083852/person_1_d8qvo9.webp"),
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
