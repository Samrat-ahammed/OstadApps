import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color buttonColor = Colors.green;
    Color? inButtonColor = Colors.green[50];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              AppBar(),
              const SizedBox(
                height: 20,
              ),
              Card(size),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      for (var i = 0; i < 2; i++)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 60,
                          width: 190,
                          decoration: BoxDecoration(
                              color: Colors.green[50],
                              borderRadius: BorderRadius.circular(10),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                const BoxShadow(
                                    color: Colors.green, blurRadius: 1)
                              ]),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.book,
                                size: 30,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "My Courses",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      // Container(
                      //   padding: const EdgeInsets.symmetric(horizontal: 35),
                      //   height: 60,
                      //   width: 200,
                      //   decoration: BoxDecoration(
                      //       color: Colors.green[50],
                      //       borderRadius: BorderRadius.circular(10),
                      //       boxShadow: [
                      //         const BoxShadow(
                      //             color: Colors.green, blurRadius: 1)
                      //       ]),
                      //   child: Row(
                      //     children: [
                      //       const Icon(
                      //         Icons.book,
                      //         size: 30,
                      //       ),
                      //       const SizedBox(
                      //         width: 10,
                      //       ),
                      //       const Text(
                      //         "My Courses",
                      //         style: TextStyle(
                      //             fontSize: 16, fontWeight: FontWeight.w600),
                      //       )
                      //     ],
                      //   ),
                      // ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView Card(Size size) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 2; i++)
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, left: 10, top: 10, bottom: 10),
              child: Container(
                padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                height: size.width / 2,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                        color: Color.fromARGB(255, 201, 200, 200),
                        blurRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Introduction to Google Dart",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Programming - Live Class",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Color.fromARGB(255, 138, 133, 0),
                        ),
                        const Text(
                          "9:30 PM SUN,2 october",
                          style: TextStyle(
                            color: Color.fromARGB(255, 138, 133, 0),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 4,
                          width: 4,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Day 1",
                          style: TextStyle(
                            color: Color.fromARGB(255, 138, 133, 0),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(Icons.alarm_add_outlined),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Starts in"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Day 21Hours 25m 21s",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "Join Live Class",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.video_camera_back)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Row AppBar() {
    return Row(
      children: [
        Image.asset(
          fit: BoxFit.cover,
          "assets/images/OstadPhotp.png",
          height: 30,
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          "Ostad",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  "assets/images/avaterimage.png",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(30),
              color: Colors.red),
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, size: 30),
        ),
      ],
    );
  }
}
