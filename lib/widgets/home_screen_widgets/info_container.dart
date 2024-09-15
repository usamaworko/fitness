import 'package:flutter/material.dart';

import '../../buttons/app_buttons.dart';
import '../../constants/app_colors.dart';
import '../../constants/text_styles.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 22, horizontal: 18),
      margin: EdgeInsets.only(top: 14),
      height: 165,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                AppColors.mediumOrange,
                AppColors.lightOrange
              ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daily Run',
                    style: TextStyles.heading1,
                  ),
                  Text(
                    '458 users are running now',
                    style: TextStyles.caption1,
                  )
                ],
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: Icon(Icons.diamond,color: AppColors.orange,size: 35,),
              ),
            ],
          ),
          AppButtons(height: 50, width: double.infinity, text: 'Start Daily Run').signUpButton
        ],
      ),
    );
  }
}
