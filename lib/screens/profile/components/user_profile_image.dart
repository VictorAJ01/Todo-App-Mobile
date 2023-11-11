import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.asset('images/user-profile-image-01.png'),
          ),
          const SizedBox(height: 16),
          const Text(
            'Martha Hays',
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 20.0,
              color: Color(0xDDFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
