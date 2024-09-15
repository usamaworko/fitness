import 'package:flutter/material.dart';

import '../../buttons/app_buttons.dart';
import '../../constants/text_styles.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      height: 165,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
            image: AssetImage('assets/images/image.png'),
            fit: BoxFit.cover),
      ),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Join Our Challenge!',
            style: TextStyles.heading1,
          ),
          const Text(
            'Track your progress, complete with\nfriends, and achieve your fitness goals.\nAll levels welcome!',
            style: TextStyles.caption2,
          ),
          AppButtons(height: 40, width: 145, text: 'Sign Up Now!').signUpButton
        ],
      ),
    );
  }
}
