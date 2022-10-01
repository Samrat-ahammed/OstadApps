import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              AppBar(),
              const SizedBox(
                height: 15,
              ),
              Card(size),
              const SizedBox(
                height: 15,
              ),
              const Class_of_Ostad(),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                flex: 5,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    liveClassButton(),
                    liveClassButton(),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                    child: IconButton(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Expanded(flex: 3, child: Container())
            ],
          ),
        ),
      ),
    );
  }

  Stack liveClassButton() {
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            boxShadow: [const BoxShadow(color: Colors.yellow, blurRadius: 1)],
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage("assets/images/classTeacher.jpg"),
              fit: BoxFit.cover,
            ),
            color: Colors.brown,
          ),
        ),
        Positioned(
          bottom: 0,
          top: 150,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.only(),
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Color.fromARGB(255, 237, 237, 134),
            ),
            child: Row(
              children: [
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)),
                  height: 40,
                  width: 100,
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Live Class",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Power BI for Proffessionals",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const Spacer()
              ],
            ),
          ),
        ),
      ],
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

class Class_of_Ostad extends StatelessWidget {
  const Class_of_Ostad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              width: 190,
              decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(10),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(color: Colors.green, blurRadius: 1)
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              width: 190,
              decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(10),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(color: Colors.green, blurRadius: 1)
                  ]),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.video_camera_front,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Upcoming live",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 228, 252),
                      borderRadius: BorderRadius.circular(10),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(color: Colors.green, blurRadius: 1)
                      ]),
                  width: 150,
                  height: 110,
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.file_open,
                          size: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Resources",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 174, 192, 223),
                      borderRadius: BorderRadius.circular(10),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                            color: Color.fromARGB(255, 42, 82, 151),
                            blurRadius: 1)
                      ]),
                  width: 150,
                  height: 110,
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.video_camera_back_rounded,
                          size: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Recording",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 238, 210, 208),
                      borderRadius: BorderRadius.circular(10),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(color: Colors.red, blurRadius: 1)
                      ]),
                  width: 150,
                  height: 110,
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.note_alt,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Assignment",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
