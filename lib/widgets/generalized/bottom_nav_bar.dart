import 'package:fitness/home_sceen.dart';
import 'package:fitness/widgets/filter_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Handle navigation here
    if(index == 1) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const FilterScreen()));
    }else{
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomeSceen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.white : Colors.white70,
            ),
            onPressed: () => _onItemTapped(0),
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: _selectedIndex == 1 ? Colors.white : Colors.white70,
            ),
            onPressed: () => _onItemTapped(1),
          ),
          IconButton(
            icon: Icon(
              Icons.add_circle,
              color: _selectedIndex == 2 ? Colors.white : Colors.white70,
            ),
            onPressed: () => _onItemTapped(2),
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: _selectedIndex == 3 ? Colors.white : Colors.white70,
            ),
            onPressed: () => _onItemTapped(3),
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: _selectedIndex == 4 ? Colors.white : Colors.white70,
            ),
            onPressed: () => _onItemTapped(4),
          ),
        ],
      ),
    );
  }
}
