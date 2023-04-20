import 'package:flutter/material.dart';
import 'package:guvenligecis/ui/Anasayfa.dart';
import 'package:guvenligecis/ui/BottomNavBar.dart';
import 'package:guvenligecis/ui/tabMenu/KisiselBilgiler.dart';
import 'package:guvenligecis/ui/tabMenu/Mesaj.dart';
import 'tabMenu/Iletisim.dart';


class BottomNavBar extends StatelessWidget {

  final menuItemlist = const <MenuItem>[
    MenuItem(Icons.home, ''),
    MenuItem(Icons.person, ''),
    MenuItem(Icons.phone, ''),
    MenuItem(Icons.message, ''),

  ];

  int index = 0;
  final _buildBody = const <Widget> [Anasayfa(),KisiselBilgiler(),Iletisim(),Mesaj()];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar( type: BottomNavigationBarType.shifting,
      currentIndex: index,
      onTap: (x) {

      },
      elevation: 16.0,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.white54,
      selectedItemColor: Colors.white,
      items: menuItemlist
          .map((MenuItem menuItem) => BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(menuItem.iconData),
        label: menuItem.text,
      ))

          .toList(),
    );
  }
}
class MenuItem {
  const MenuItem(this.iconData, this.text);
  final IconData iconData;
  final String text;
}