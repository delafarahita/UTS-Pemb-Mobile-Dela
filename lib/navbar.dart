import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_mobile_dela/account_page.dart';
import 'package:uts_mobile_dela/history_page.dart';
import 'package:uts_mobile_dela/home_page.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.doc_text),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.money_dollar),
          label: 'Pay',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.mail),
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          label: 'Account',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black,
      onTap: (index) {
        if (index != 2 && index != 3) { // Disables "Pay" and "Inbox"
          onItemTapped(index);
        }
      },
    );
  }
}
