import 'dart:developer';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:job_app/detail_job.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  final iconList = <IconData>[
    Icons.home_rounded,
    Icons.bookmark,
    Icons.notifications,
    Icons.person,
  ];
  List<bool> bookmarkStatusList = List.generate(5, (index) => false);

  var _bottomNavIndex = 0;

  bool isBookmark = false;

  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;
  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 239, 239),
        body: ListView(
          shrinkWrap: true,
          children: [
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 48, 87),
              ),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome, Septiar",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Find Your Dream Job",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      "assets/profil.png",
                      width: 70,
                      height: 70,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: TextField(
                        controller: search,
                        enabled: true,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 0),
                          icon: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 2),
                            child: Image.asset(
                              "assets/search.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          hintText: "Input your password",
                          label: const Text(
                            "Search",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "assets/filter.png",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Text(
                "Your Bookmark",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: const ScrollPhysics(),
                itemBuilder: (contextRecent, indexRecent) {
                  if (bookmarkStatusList.length <= indexRecent) {
                    bookmarkStatusList.add(false);
                  }
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DetailJob()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10),
                                    child: Image.asset(
                                      "assets/amazon.png",
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Amazon",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 0, 48, 87),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Data Analyst",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "8.000.000 - 12.000.000",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: const Color.fromARGB(
                                                    255, 89, 163, 223)
                                                .withOpacity(0.5),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Center(
                                                child: Text(
                                              "Full Time",
                                            )),
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: const Color.fromARGB(
                                                    255, 89, 163, 223)
                                                .withOpacity(0.5),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Center(
                                                child: Text("Intermediate")),
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: const Color.fromARGB(
                                                    255, 89, 163, 223)
                                                .withOpacity(0.5),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child:
                                                Center(child: Text("Remote")),
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  bookmarkStatusList[indexRecent] =
                                      !bookmarkStatusList[indexRecent];
                                },
                              );
                              log(bookmarkStatusList.toString());
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: bookmarkStatusList[indexRecent] == true
                                  ? const Icon(Icons.bookmark_outlined)
                                  : const Icon(Icons.bookmark_border_rounded),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            final color =
                isActive ? const Color.fromARGB(255, 0, 48, 87) : Colors.amber;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconList[index],
                  size: 24,
                  color: color,
                ),
                const SizedBox(height: 5),
              ],
            );
          },
          backgroundColor: Colors.white,
          activeIndex: _bottomNavIndex,
          splashColor: const Color.fromARGB(255, 0, 48, 87),
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.defaultEdge,
          gapLocation: GapLocation.center,
          height: 60,
          leftCornerRadius: 25,
          rightCornerRadius: 25,
          onTap: (index) => setState(() => _bottomNavIndex = index),
        ),
      ),
    );
  }
}
