import 'package:flutter/material.dart';
import 'package:super_bottom_navigation_bar/super_bottom_navigation_bar.dart';

class SuperBottomBarApp extends StatelessWidget {
   SuperBottomBarApp({super.key});
      Color primaryColor = Colors.yellowAccent;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              bottomNavigationBar: SuperBottomNavigationBar(
                currentIndex: 1,
                items: [
                  SuperBottomNavigationBarItem(
                    unSelectedIcon: Icons.home_outlined,
                    selectedIcon: Icons.home,
                    splashColor: primaryColor,
                    borderBottomColor: primaryColor,
                    backgroundShadowColor: primaryColor,
                    selectedIconColor: primaryColor,
                    unSelectedIconColor: Colors.grey
                  ),
                  SuperBottomNavigationBarItem(
                      unSelectedIcon: Icons.favorite_border,
                      selectedIcon: Icons.favorite,
                      splashColor: primaryColor,
                      borderBottomColor: primaryColor,
                      backgroundShadowColor: primaryColor,
                      selectedIconColor: primaryColor,
                      unSelectedIconColor: Colors.grey
                  ),
                  SuperBottomNavigationBarItem(
                      unSelectedIcon: Icons.cloud_done_outlined,
                      selectedIcon: Icons.cloud_done,
                      splashColor: primaryColor,
                      borderBottomColor: primaryColor,
                      backgroundShadowColor: primaryColor,
                      selectedIconColor: primaryColor,
                      unSelectedIconColor: Colors.grey
                  ),
                ],
                onSelected: (index){
                  print('tab $index');
                },
              ),
     
           );
     
  }
}