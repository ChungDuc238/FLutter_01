import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/item_navbar_widget.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color(0xFF525464),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: ItemNavbarWidget(
                iconNavbar: Icons.home,
                content: 'Home',
                callback: () => {},
              ),
            ),
            InkWell(
              child: ItemNavbarWidget(
                iconNavbar: Icons.person,
                content: 'Profile',
                callback: () => {},
              ),
            ),
            InkWell(
              child: ItemNavbarWidget(
                iconNavbar: Icons.settings,
                content: 'Settings',
                callback: () => {},
              ),
            ),
            InkWell(
              child: ItemNavbarWidget(
                iconNavbar: Icons.email,
                content: 'Messages',
                callback: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
