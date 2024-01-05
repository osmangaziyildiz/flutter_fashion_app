import 'package:fashion_app/product1.dart';
import 'package:fashion_app/product2.dart';
import 'package:fashion_app/product3.dart';
import 'package:fashion_app/top_side_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          padding: const EdgeInsets.all(10),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.amber,
          controller: tabController,
          tabs: const [
            Icon(Icons.home, color: Colors.grey, size: 25),
            Icon(Icons.search, color: Colors.grey, size: 25),
            Icon(Icons.photo_camera, color: Colors.grey, size: 25),
            Icon(Icons.account_circle, color: Colors.grey, size: 25),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Fashion App",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            color: Colors.blueGrey,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            height: 150,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              scrollDirection: Axis.horizontal,
              children: [
                topSideWidget("assets/model1.jpeg", "assets/chanellogo.jpg"),
                const SizedBox(width: 20),
                topSideWidget("assets/model2.jpeg", "assets/louisvtnlogo.jpg"),
                const SizedBox(width: 20),
                topSideWidget("assets/model3.jpeg", "assets/guccilogo.jpg"),
                const SizedBox(width: 20),
                topSideWidget("assets/model4.jpg", "assets/fendilogo.png"),
                const SizedBox(width: 20),
                topSideWidget("assets/model5.jpg", "assets/pradalogo.jpg"),
                const SizedBox(width: 20),
                topSideWidget("assets/model6.jpg", "assets/guccilogo.jpg"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 15,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 550,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: const DecorationImage(
                                image: AssetImage(
                                  "assets/model1.jpeg",
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width - 145,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daisy",
                                style: GoogleFonts.abel(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "34 mins ago",
                                style: GoogleFonts.abel(
                                    fontSize: 11,
                                    height: 1.4,
                                    color: Colors.blueGrey),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.more_vert)
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
                        "Today's style: Simple and chic. I aimed for a comfortable and elegant look with modern cuts and clean details."
                        " Style is a way to express yourself, and today,"
                        " I'm celebrating the beauty of minimalism."
                        " What do you think of my outfit?"),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Product1(
                                  imgPath: "assets/modelgrid1.jpeg",
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              height: 250,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                image: DecorationImage(
                                    image: AssetImage("assets/modelgrid1.jpeg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const Product2(
                                      imgPath: "assets/modelgrid2.jpeg",
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Container(
                                  height: 120,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid2.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const Product3(
                                      imgPath: "assets/modelgrid3.jpeg",
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  height: 120,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid3.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.withOpacity(0.3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                          child: const Text(
                            "# Louis Vuitton",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.withOpacity(0.3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                          child: const Text(
                            "# Prada",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.withOpacity(0.3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                          child: const Text(
                            "# Fendi",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(thickness: 2, color: Colors.grey),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.reply,
                            color: Colors.black.withOpacity(0.5),
                            textDirection: TextDirection.rtl),
                        const SizedBox(width: 5),
                        const Text("1.7k"),
                        const SizedBox(width: 30),
                        Icon(Icons.comment,
                            color: Colors.black.withOpacity(0.5)),
                        const SizedBox(width: 5),
                        const Text("438"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 210,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.favorite, color: Colors.red),
                              Text("2.3k"),
                            ],
                          ),
                        )
                      ],
                    ),
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
