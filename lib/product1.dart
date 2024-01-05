import 'package:flutter/material.dart';

class Product1 extends StatefulWidget {
  final String imgPath;

  const Product1({super.key, required this.imgPath});

  @override
  State<Product1> createState() => _Product1State();
}

class _Product1State extends State<Product1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 45,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 8,
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 0.5, color: Colors.grey),
                            image: const DecorationImage(
                                image: AssetImage("assets/pradaovercoat.png"),
                                fit: BoxFit.contain),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Black Overcoat",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Text(
                                  "Prada",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey),
                                ),
                                const SizedBox(width: 25),
                                Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/pradalogo.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                  height: 18,
                                  width: 25,
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width - 150,
                              child: const Text(
                                "If you're looking for a warm, stylish, and comfortable black overcoat, you've come to the right place!"
                                " With the timeless and chic allure of black, this cardigan will become an essential piece in your wardrobe.",
                                style:
                                    TextStyle(fontSize: 9, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: const Divider(thickness: 2),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "\$",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                                TextSpan(
                                  text: "6288",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: FloatingActionButton(
                                elevation: 6,
                                backgroundColor: Colors.amber,
                                onPressed: () {},
                                child: const Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.black,
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
