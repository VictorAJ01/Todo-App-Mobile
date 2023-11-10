import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Iconsax.sort, color: Colors.white),
        ),
        title: const Text(
          'Index',
          style: TextStyle(
            color: Color(0xDDFFFFFF),
            fontFamily: 'Lato',
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: IconButton(
              icon: ClipOval(
                child: Image.asset(
                  'images/user-profile-image.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              onPressed: () => {print("Hello")},
              iconSize: 40,
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 110,
                ),
                Center(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('images/Checklist-rafiki-1.png'),
                        height: 227.0,
                        width: 227.0,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'What do you want to do today?',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20.0,
                    color: Color(0xDDFFFFFF),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Tap + to add your tasks',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16.0,
                    color: Color(0xDDFFFFFF),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
