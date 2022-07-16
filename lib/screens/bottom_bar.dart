

import 'package:booktickets/screens/home_screen.dart';
import 'package:booktickets/screens/profile_screen.dart';
import 'package:booktickets/screens/search_screen.dart';
import 'package:booktickets/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({ Key? key }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  
  //parameter to change the index of bottom bar
    int _selectedIndex = 0;

  // list to swap between widgets
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()

  ];

  void _onItemTapped(int index){
    setState(() {
      
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: _widgetOptions[_selectedIndex],
      ) ,
      
      bottomNavigationBar: BottomNavigationBar(
        // bottom bar call package to change the icon and activeIcon for change the icon when pressed
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color.fromARGB(255, 61, 116, 144),
        unselectedItemColor: const Color(0xFF526480),
        type: BottomNavigationBarType.fixed, // when pressed the icon to move (shifiting [default one]) to left or right
        items:  const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon:Icon(FluentSystemIcons.ic_fluent_home_filled) ,
          label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          label: "Profile"),
        
        ],
      ),
    );
  }
}