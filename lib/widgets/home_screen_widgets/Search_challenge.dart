import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/text_styles.dart';

class SearchChallenge extends StatelessWidget {
  const SearchChallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Column(
          children: [Row(children: [
          Container(
            height: 40,
            width: 40,
            child: const Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.lightBlack)),
          )

        ],)],),
     ),
    );
  }
}
