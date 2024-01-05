import 'package:flutter/material.dart';

Widget topSideWidget(String imagePath, String logoPath) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 60,
            top: 60,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(logoPath),
                    fit: BoxFit.cover,
                    alignment: Alignment.center),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
        alignment: Alignment.center,
        width: 60,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.amber.withOpacity(0.8),
        ),
        child: const Text(
          "Follow",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    ],
  );
}
