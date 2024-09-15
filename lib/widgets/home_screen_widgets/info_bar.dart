import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/text_styles.dart';

class InfoBar extends StatelessWidget {
  const InfoBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/profile.jpeg',
                  ),
                  fit: BoxFit.cover)),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Bruce👋',
              style: TextStyles.heading1,
            ),
            Text(
              'Welcome! Let' 's make today awesome',
              style: TextStyles.caption1,
            ),
          ],
        ),
        Container(
          height: 60,
          width: 60,
          child: const Icon(
            Icons.notifications,
            size: 30,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.lightBlack)),
        )
      ],
    );
  }
}
