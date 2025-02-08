import 'package:flutter/material.dart';
import 'package:mehedi_design/Image/EyelinerBody.dart';
import 'package:mehedi_design/Image/HairBody.dart';
import 'package:mehedi_design/Image/MehndiBody.dart';
import 'package:mehedi_design/Image/TattooBody.dart';
import 'package:mehedi_design/NailBody.dart'; // NailBody ইম্পোর্ট করার সময় বানান নিশ্চিত করুন

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  final List<String> categories = [
    "Mehndi",
    "Nail",
    "Tattoo",
    "Hair",
    "Eyeliner",
  ];

  String selectedCategory = "Mehndi"; // Default selected category

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mehndi Design",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Category List using SingleChildScrollView for horizontal scrolling
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Horizontal scrolling
              child: Row(
                children:
                    categories.map((category) {
                      final bool isSelected = category == selectedCategory;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategory = category;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Chip(
                            label: Text(category),
                            backgroundColor:
                                isSelected ? Colors.brown : Colors.grey[200],
                            labelStyle: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Dynamic Body based on Selected Category
          Expanded(child: getCategoryBody(selectedCategory)),
        ],
      ),
    );
  }

  // Function to return different category body based on selection
  Widget getCategoryBody(String category) {
    switch (category) {
      case "Mehndi":
        return const MehndiBody();
      case "Nail":
        return const NailBody();
      case "Tattoo":
        return TattooBody();
      case "Hair":
        return const HairBody();
      case "Eyeliner":
        return const EyelinerBody();
      default:
        return const MehndiBody();
    }
  }
}
