import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants/app_colors.dart';

class DateCarousel extends StatefulWidget {
  @override
  _DateCarouselState createState() => _DateCarouselState();
}

class _DateCarouselState extends State<DateCarousel> {
  late int _currentDateIndex;

  @override
  void initState() {
    super.initState();
    _currentDateIndex = 3; // Index of current date (middle of 7 days)
  }

  @override
  Widget build(BuildContext context) {

    final itemWidth = MediaQuery.of(context).size.width / 7.6;

    List<Widget> dateWidgets = List.generate(7, (index) {
      DateTime date = DateTime.now().add(Duration(days: index - _currentDateIndex));
      String day = DateFormat('E').format(date);
      String dateNum = date.day.toString();
      bool isCurrentDate = index == _currentDateIndex;

      return Container(
        width: itemWidth, // Fixed width for each item
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 40,
              decoration: BoxDecoration(color: isCurrentDate? AppColors.orange : Colors.transparent,
              borderRadius: BorderRadius.circular(100)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    day,
                    style: TextStyle(
                      color: isCurrentDate ? AppColors.white : AppColors.darkBlack,
                    ),
                  ),
                  Text(
                    dateNum,
                    style: TextStyle(
                      color: isCurrentDate ? AppColors.white : AppColors.darkBlack,
                      fontWeight: isCurrentDate ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });

    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 70, // Adjusted height to fit content
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: dateWidgets,
      ),
    );
  }
}
