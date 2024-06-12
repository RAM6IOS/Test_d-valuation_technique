import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:test_devalution_technique/View/Widget/profileBody.dart';


class Profel extends StatefulWidget {
  @override
  _ProfelState createState() => _ProfelState();
}
class _ProfelState extends State<Profel> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileBody(), 
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: SvgPicture.asset(
              'image/send.svg', // Ensure the path is correct
              width: 20,
              height: 19,
              color: _selectedIndex == 0 ? Color.fromRGBO(39, 57, 111, 1) : Colors.white
            ), title: 'Send'),
          TabItem(icon:  SvgPicture.asset(
              'image/transport.svg', // Ensure the path is correct
              width: 20,
              height: 19,
            color: _selectedIndex == 1 ? Color.fromRGBO(39, 57, 111, 1) : Colors.white

            ), title: 'Transport'),
          TabItem(icon:  SvgPicture.asset(
              'image/dashborad.svg', // Ensure the path is correct
              width: 20,
              height: 19,
              color: _selectedIndex == 2 ? Color.fromRGBO(39, 57, 111, 1) : Colors.white

            ), title: 'Dashboard'),
          TabItem(icon: SvgPicture.asset(
              'image/chat.svg', // Ensure the path is correct
              width: 20,
              height: 19,
              color: _selectedIndex == 3 ? Color.fromRGBO(39, 57, 111, 1) : Colors.white

            ), title: 'Chat'),
          TabItem(icon: SvgPicture.asset(
              'image/profile.svg', // Ensure the path is correct
              width: 33,
              height: 44.7,
              color: _selectedIndex == 4 ? Color.fromRGBO(39, 57, 111, 1) : Colors.white

            ), title: 'Profile'),
        ],
        initialActiveIndex: _selectedIndex, // optional, default as 0
        onTap: _onItemTapped,
        backgroundColor: Colors.blue, // Background color of the bar
        activeColor: const Color.fromRGBO(19, 59, 183, 1), // Color of the active item
        color: const Color.fromARGB(255, 255, 255, 255), // Color of the inactive items
      ),
    );
  }
}



