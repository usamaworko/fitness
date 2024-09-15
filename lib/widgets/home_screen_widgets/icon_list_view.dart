import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/icon_list.dart';
import '../../constants/text_styles.dart';

class IconListView extends StatelessWidget {
  const IconListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(bottom: 10),
      child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 4,itemBuilder: (context,index){
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(12),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: AppColors.lightBlack
                  )
              ),
              child: iconList[index].icon,
            ),
            Text('${iconList[index].label}',style: TextStyles.caption2.copyWith(fontWeight: FontWeight.bold),)
          ],
        );
      },),
    );
  }
}
