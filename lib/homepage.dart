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
      bottomNavigationBar: ClipRRect(
        // Ensures the rounded corners are properly clipped
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.teal,
          elevation: 0, // Removes default shadow
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black, // Unselected items in black
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.image), label: "Image"),
            BottomNavigationBarItem(icon: Icon(Icons.videocam), label: "Video"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favrite",
            ),
          ],
        ),
      ),
    );
  }
}
