import 'package:flutter/material.dart';

class DetailJob extends StatelessWidget {
  const DetailJob({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 243, 239, 239),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 200,
                    ),
                    Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 48, 87),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/office.png",
                              ),
                              fit: BoxFit.cover)
                          // borderRadius:
                          //     BorderRadius.vertical(bottom: Radius.circular(25)),
                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          "assets/amazon.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Amazon",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 48, 87),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Data Analyst",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Washington, USA",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: const TabBar(
                    tabs: <Widget>[
                      Text(
                        "Description",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "Requirements",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: const TabBarView(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "The Infrastructure Operations (Data Center) Team is the backbone of AWS, supporting the rapidly growing AWS business and customers 24/7. We are committed to maintain the physical infrastructure of AWS, ensuring the standards for operational performance in the areas of safety, security, availability, productivity, capacity, efficiency, and cost.\n\nIn the Infrastructure Operations (Data Center) Team, you will have the chance to work on the most advanced technologies in a DYNAMIC environment with expanding opportunities. \n\nIf you enjoy working in a strong and close-knit diverse team, Infrastructure Operations (Data Center) Team is the place to be!",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("- "),
                                Expanded(
                                  child: Text(
                                    " At least 5 years of experience working as an Analyst with experience in analytics/data science/insights/strategy/BI.",
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("- "),
                                Expanded(
                                  child: Text(
                                    " Advanced working knowledge and hands-on experience in SQL",
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("- "),
                                Expanded(
                                  child: Text(
                                    " Strong knowledge and hands-on experience in data visualization tools such as Tableau (preferably) ",
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("- "),
                                Expanded(
                                  child: Text(
                                    " Expert domain of data analysis and data visualization tools and software such as Excel, Python (or R) ",
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("- "),
                                Expanded(
                                  child: Text(
                                    " A good understanding of statistical modelling knowledge or any machine learning technique knowledge (such as hypothesis testing, regression, logistic regression, random forest, etc.)",
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 48, 87),
                          borderRadius: BorderRadius.circular(8)),
                      width: 150,
                      height: 40,
                      child: const Center(
                          child: Text(
                        "Apply Now",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
