import 'package:flutter/material.dart';
import 'package:mehedi_design/Favrite.dart';
import 'package:mehedi_design/Image.dart';
import 'package:mehedi_design/video.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [image(), Video(), Favrite()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), // Rounded top-left corner
            topRight: Radius.circular(30), // Rounded top-right corner
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black26, // Soft shadow effect
          //     blurRadius: 5,
          //     spreadRadius: 2,
          //     offset: Offset(0, -2), // Shadow above the navbar
          //   ),
          // ],
        ),
        child: ClipRRect(
          // Ensures the rounded corners are properly clipped
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.green,
            elevation: 0, // Removes default shadow
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black, // Unselected items in black
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Image"),
              BottomNavigationBarItem(
                icon: Icon(Icons.article),
                label: "Video",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_library),
                label: "Favrite",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
