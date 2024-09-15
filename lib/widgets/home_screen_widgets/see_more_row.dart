import 'package:flutter/material.dart';

import '../../constants/text_styles.dart';

class SeeMoreRow extends StatelessWidget {
  final String text;
  final onPress;
  const SeeMoreRow({super.key, required this.text,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: TextStyles.heading1,),
         InkWell(
          onTap: onPress,
          child: Text('See more',style: TextStyles.caption1,
          ),
        )
      ],
    );
  }
}
