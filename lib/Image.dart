import 'package:flutter/material.dart';

// ignore: camel_case_types
class image extends StatelessWidget {
  const image({super.key});

  static const List<String> categories = [
    "Mehndi",
    "Nail",
    "Tattoo",
    "Hair",
    "Eyeliner",
  ];

  static const List<Map<String, String>> sections = [
    {"name": "Back Hand", "image": "assets/images/back_hand.png"},
    {"name": "Front Hand", "image": "assets/images/back_hand.png"},
    {"name": "Finger", "image": "assets/images/back_hand.png"},
    {"name": "Bridal", "image": "assets/images/back_hand.png"},
    {"name": "Foot", "image": "assets/images/back_hand.png"},
    {"name": "Arm", "image": "assets/images/back_hand.png"},
  ];

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    categories.map((category) {
                      final bool isSelected = category == "Mehndi";
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Chip(
                          label: Text(category),
                          backgroundColor:
                              isSelected ? Colors.brown : Colors.grey[200],
                          labelStyle: TextStyle(
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.2, // ছবিগুলো ছোট করার জন্য
                ),
                itemCount: sections.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          sections[index]["image"]!,
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.darken,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        Center(
                          child: Text(
                            sections[index]["name"]!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
