import 'package:flutter/material.dart';

class homescreen1 extends StatefulWidget {
  const homescreen1({super.key});

  @override
  State<homescreen1> createState() => _homescreen1State();
}

class _homescreen1State extends State<homescreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 59, left: 24),
                    child: Container(
                        width: 42,
                        height: 42,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("Image/patient.png"),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 64, left: 344),
                    child: Container(
                        width: 44,
                        height: 44,
                        child: Icon(
                          Icons.notifications_none_outlined,
                          size: 33,
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: const Text(
                  "Looking for Immediate Treatment?",
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(29, 30, 37, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 182,
              ),
              child: Container(
                child: const Text(
                  "We will help you faster",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(128, 141, 158, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, right: 224),
              child: Container(
                width: 146,
                height: 48,
                decoration: BoxDecoration(
                    // border: Border.all(),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color.fromARGB(255, 31, 107, 117),
                          // Color.fromARGB(255, 14, 152, 170),
                          Colors.cyan,
                          Colors.cyan,
                          Colors.cyan,
                        ]),
                    borderRadius: BorderRadius.circular(55)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        child: Icon(
                          Icons.find_replace_sharp,
                          size: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Find Doctor ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Container(
                width: 375,
                height: 176,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color.fromARGB(255, 245, 244, 244)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 12),
                      child: Container(
                        child: const Text(
                          "EHealhcare Services",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, left: 12, right: 12),
                                child: Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                        // border: Border.all(),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(122)),
                                    child: Image.asset(
                                      "Image/Splashimg.png",
                                      width: 25,
                                      height: 35,
                                    ))),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, left: 12, right: 12),
                                child: Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                        // border: Border.all(),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(122)),
                                    child: Image.asset(
                                      "Image/pharmacy.png",
                                      width: 15,
                                      height: 25,
                                    ))),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, left: 12, right: 12),
                                child: Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                        // border: Border.all(),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(122)),
                                    child: Image.asset(
                                      "Image/Delivery.png",
                                      width: 35,
                                      height: 45,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: const Text(
                                "Consultantion",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              child: const Text(
                                "Medicines",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              child: const Text(
                                "Shipment",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: const Text(
                      "My Appointment",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See All",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ))),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                width: 335,
                height: 111,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(7)),
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 22, left: 13),
                    child: Container(
                      child: CircleAvatar(
                        child: Image.asset("Image/appointment.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 23, left: 68),
                    child: Container(
                      child: Text(
                        "Dr. Nirmala Azalea",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 43, left: 68),
                    child: Container(
                      child: Text(
                        "Orthopedic",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(128, 141, 158, 1)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 65),
                    child: Container(
                      width: 146,
                      height: 24,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(228, 248, 250, 1),
                          // border: Border.all(),
                          borderRadius: BorderRadius.circular(2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Icon(
                              Icons.access_time,
                              size: 18,
                              color: Color.fromRGBO(37, 124, 255, 1),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Wed Jun 20",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(37, 124, 255, 1),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            child: Text(
                              "8:00",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(37, 124, 255, 1),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 36, left: 275),
                    child: Container(
                      child: IconButton(
                        // iconSize: 100,
                        color: Colors.grey,
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                        // the method which is called
                        // when button is pressed
                        onPressed: () {},
                      ),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.search),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.search),
      //   ),
      // ]),

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: IconTheme(
          data: IconThemeData(
              color: const Color.fromARGB(255, 88, 86, 86), size: 32),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home_sharp),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.article_rounded),
                ),
                SizedBox(width: 18),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.message),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.account_circle_outlined),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
