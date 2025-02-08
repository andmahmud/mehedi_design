// ignore: file_names
import 'package:flutter/material.dart';

class HairBody extends StatelessWidget {
  const HairBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> imageDetails = [
      {'path': 'assets/images/back_hand.png', 'label': 'Simple Hair'},
      {'path': 'assets/images/Front_Hand.png', 'label': 'Short Hair'},
      {'path': 'assets/images/Finger.png', 'label': 'School Hair'},
      {'path': 'assets/images/Bridal.png', 'label': 'Wedding Hair'},
      {'path': 'assets/images/Foot.png', 'label': 'Party Hair'},
      {'path': 'assets/images/Arm.png', 'label': 'Natural Hair'},
      {'path': 'assets/images/Arm.png', 'label': 'Medium Hair'},
      {'path': 'assets/images/Arm.png', 'label': 'Long Hair'},
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: imageDetails.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Optionally handle tap events here
          },
          child: GridTile(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                  image: AssetImage(imageDetails[index]['path']!),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    imageDetails[index]['label']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
